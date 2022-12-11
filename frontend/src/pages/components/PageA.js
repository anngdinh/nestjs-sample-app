import styled from "styled-components";
import _ from 'lodash';
import axios from "axios";
import { useState, useEffect } from 'react';

import { Icon, Input, Label, Menu, Table, Button, Header, Step, Container, Form, Dropdown, Segment, Accordion, Checkbox } from 'semantic-ui-react'
import ModalPageA from "./ModalPageA";

import { ToastContainer, toast } from 'react-toastify';

export default function PageA() {

    const [allData, setAllData] = useState([])

    useEffect(() => {
        const fetchData = async () => {
            try {
                {
                    const { data: response } = await axios.get('http://localhost:3001/crud/reads');
                    setAllData(response)
                }
            } catch (error) {
                console.error(error)
            }
        };
        fetchData();
    }, [])

    const deleteRecord = (url) => {
        const fetchData = async () => {
            try {
                {
                    const { data: response } = await axios.delete(url);
                    console.log({ response })
                    handleToast(response)

                }
                {
                    const { data: response } = await axios.get('http://localhost:3001/crud/reads');
                    setAllData(response)
                }
            } catch (error) {
                console.error(error)
            }
        }
        fetchData();
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

    return (
        <>
            <Menu secondary>
                {/* <Menu.Item
                    name='table'
                    active={menu === 'table'}
                    onClick={handleMenuClick}
                />
                <Menu.Item
                    name='treeView'
                    active={menu === 'treeView'}
                    onClick={handleMenuClick}
                /> */}

                <Menu.Menu position='right'>
                    {/* <Button positive onClick={() => {}}>
                        <Icon name='add' />
                        Tạo mới
                    </Button> */}
                    <ModalPageA
                        data={{
                            ma_bien_lai: "",
                            so_tien_goc: "",
                            so_tien_can_thanh_toan: "",
                            so_tien_da_thanh_toan: "",
                            so_tien_con_lai: "",
                            hinh_thuc: "Cash",
                            ma_lop_hoc: "",
                            ma_hoc_vien: "",
                        }}
                        mode='create'
                        URL='http://localhost:3001/crud/create'
                        URL_read='http://localhost:3001/crud/reads'
                        setAllData={setAllData}></ModalPageA>
                </Menu.Menu>
            </Menu>


            <Container fluid>
                <Table celled>
                    <Table.Header>
                        <Table.Row>
                            <Table.HeaderCell>STT</Table.HeaderCell>
                            <Table.HeaderCell>Mã biên lai</Table.HeaderCell>
                            <Table.HeaderCell>Số tiền gốc</Table.HeaderCell>
                            <Table.HeaderCell>Cần thanh toán</Table.HeaderCell>
                            <Table.HeaderCell>Đã thanh toán</Table.HeaderCell>
                            <Table.HeaderCell>Còn lại</Table.HeaderCell>
                            <Table.HeaderCell>Hình thức</Table.HeaderCell>
                            <Table.HeaderCell>Mã lớp học</Table.HeaderCell>
                            <Table.HeaderCell>Mã học viên</Table.HeaderCell>
                            <Table.HeaderCell>Action</Table.HeaderCell>
                        </Table.Row>
                    </Table.Header>

                    <Table.Body>
                        {
                            allData.map((e, index) => {
                                return <Table.Row key={index}>
                                    <Table.Cell>{index + 1}</Table.Cell>
                                    <Table.Cell>{e.ma_bien_lai}</Table.Cell>
                                    <Table.Cell>{e.so_tien_goc}</Table.Cell>
                                    <Table.Cell>{e.so_tien_can_thanh_toan}</Table.Cell>
                                    <Table.Cell>{e.so_tien_da_thanh_toan}</Table.Cell>
                                    <Table.Cell>{e.so_tien_con_lai}</Table.Cell>
                                    <Table.Cell>{e.hinh_thuc}</Table.Cell>
                                    <Table.Cell>{e.ma_lop_hoc}</Table.Cell>
                                    <Table.Cell>{e.ma_hoc_vien}</Table.Cell>
                                    <Table.Cell>
                                        {/* <Button
                                            basic
                                            icon='eye'
                                            onClick={() => { }}
                                        />
                                        <Button
                                            basic
                                            icon='edit'
                                            onClick={() => { }}
                                        /> */}
                                        <ModalPageA
                                            data={e}
                                            mode='edit'
                                            URL={`http://localhost:3001/crud/${e.ma_bien_lai}`}
                                            URL_read='http://localhost:3001/crud/reads'
                                            setAllData={setAllData}></ModalPageA>
                                        <Button
                                            color='red'
                                            icon='trash alternate'
                                            onClick={() => deleteRecord(`http://localhost:3001/crud/${e.ma_bien_lai}`)}
                                        />
                                    </Table.Cell>
                                </Table.Row>
                            })
                        }
                    </Table.Body>
                </Table>
            </Container>


            <ToastContainer
                position="top-right"
                autoClose={5000}
                hideProgressBar={false}
                newestOnTop={false}
                closeOnClick
                rtl={false}
                pauseOnFocusLoss
                draggable
                pauseOnHover
                theme="light"
            />
            <ToastContainer />
        </>
    );
};

