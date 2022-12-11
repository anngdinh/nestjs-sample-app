import axios from 'axios';
import _ from 'lodash';
import { useState } from 'react';

import { Icon, Label, Menu, Table, Input, Button, Dropdown, Modal, Header, Form } from 'semantic-ui-react';

import { ToastContainer, toast } from 'react-toastify';

const paymentOptions = [
    {
        key: 'Cash',
        text: 'Cash',
        value: 'Cash',
        content: (
            <Header icon='money' content='Cash' />
        ),
    },
    {
        key: 'Credit',
        text: 'Credit',
        value: 'Credit',
        content: (
            <Header icon='credit card' content='Credit' />
        ),
    },
]

export default function ModalPageA({ data, mode, URL, setAllData, URL_read }) {
    const [open, setOpen] = useState(false)
    const [newVar, setNewVar] = useState(data)


    const onChangeNewVar = (e) => {
        let _newVar = _.cloneDeep(newVar);
        _newVar[e.target.name] = e.target.value;
        _newVar.so_tien_con_lai = _newVar.so_tien_can_thanh_toan - _newVar.so_tien_da_thanh_toan
        setNewVar(_newVar);
        console.log(_newVar)
    }
    const setPayment = (value) => {
        let _newVar = _.cloneDeep(newVar);
        _newVar.hinh_thuc = value;
        setNewVar(_newVar);
        console.log(_newVar)
    }
    const saveNewVar = async () => {
        console.log("saveNewVar", newVar)
        if (mode == 'edit') {
            const { data: response } = await axios.put(URL, newVar)
            console.log(response)
            handleToast(response)
        }
        else {
            const { data: response } = await axios.post(URL, newVar)
            console.log(response)
            handleToast(response)
        }


        try {
            const { data: response } = await axios.get(URL_read);
            setAllData(response)
        } catch (error) {
            console.error(error)
        }

        setOpen(false);
    }

    const handleToast = (response) => {
        if (response.code == 200) {
            toast.success(response.message, {
                position: "top-right",
                autoClose: 5000,
                hideProgressBar: false,
                closeOnClick: true,
                pauseOnHover: true,
                draggable: true,
                progress: undefined,
                theme: "light",
            });
        }
        else if (response.code == 404) {
            toast.error(response.message, {
                position: "top-right",
                autoClose: 5000,
                hideProgressBar: false,
                closeOnClick: true,
                pauseOnHover: true,
                draggable: true,
                progress: undefined,
                theme: "light",
            });
        }
    }

    return <>
        <Modal
            closeOnDimmerClick={false}
            closeOnEscape={false}
            onClose={() => setOpen(false)}
            onOpen={() => setOpen(true)}
            open={open}
            trigger={
                <Button positive onClick={() => { }}>
                    <Icon name={mode == 'edit' ? 'edit' : 'add'} />
                    {mode == 'edit' ? '' : 'Create'}
                </Button>}
        >
            <Modal.Header>{mode == 'edit' ? "Edit" : "Create"}</Modal.Header>
            <Modal.Content>

                <Form>
                    {mode == 'edit' ? <Form.Field>
                        <label>Mã biên lai</label>
                        <Input type="number" value={newVar['ma_bien_lai']} placeholder='ma_bien_lai...' name='ma_bien_lai' onChange={onChangeNewVar} disabled />
                    </Form.Field> : <></>}

                    <Form.Field>
                        <label>Mã lớp học</label>
                        <Input type="number" value={newVar['ma_lop_hoc']} placeholder='ma_lop_hoc...' name='ma_lop_hoc' onChange={onChangeNewVar} />
                    </Form.Field>
                    <Form.Field>
                        <label>Mã học viên</label>
                        <Input type="number" value={newVar['ma_hoc_vien']} placeholder='ma_hoc_vien...' name='ma_hoc_vien' onChange={onChangeNewVar} />
                    </Form.Field>



                    <Form.Field>
                        <label>Số tiền gốc</label>
                        <Input type="number" value={newVar['so_tien_goc']} placeholder='so_tien_goc...' name='so_tien_goc' onChange={onChangeNewVar} />
                    </Form.Field>
                    <Form.Field>
                        <label>Cần thanh toán</label>
                        <Input type="number" value={newVar['so_tien_can_thanh_toan']} placeholder='so_tien_can_thanh_toan...' name='so_tien_can_thanh_toan' onChange={onChangeNewVar} />
                    </Form.Field>
                    <Form.Field>
                        <label>Đã thanh toán</label>
                        <Input type="number" value={newVar['so_tien_da_thanh_toan']} placeholder='so_tien_da_thanh_toan...' name='so_tien_da_thanh_toan' onChange={onChangeNewVar} />
                    </Form.Field>
                    <Form.Field>
                        <label>Còn lại</label>
                        <Input type="number" disabled value={newVar['so_tien_con_lai']} placeholder='so_tien_con_lai...' name='so_tien_con_lai' onChange={onChangeNewVar} />
                    </Form.Field>


                    <Form.Field>
                        <label>Group</label>
                        <Dropdown
                            placeholder='Hình thức thanh toán'
                            clearable
                            search
                            selection
                            options={paymentOptions}
                            defaultValue={newVar.hinh_thuc}
                            onChange={(e, data) => setPayment(data.value)}
                        />
                    </Form.Field>
                </Form>

            </Modal.Content>

            <Modal.Actions>
                <Button color='red' onClick={() => setOpen(false)}>
                    <Icon name='remove' /> Cancel
                </Button>
                <Button color='green' onClick={() => saveNewVar()}>
                    <Icon name='checkmark' /> Save
                </Button>
            </Modal.Actions>
        </Modal>


    </>;
}