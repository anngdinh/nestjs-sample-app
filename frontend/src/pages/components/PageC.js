import styled from "styled-components";
import _ from 'lodash';
import axios from "axios";
import { useState, useEffect } from 'react';

import { Icon, Input, Label, Menu, Table, Button, Header, Step, Container, Form, Dropdown, Segment, Accordion, Checkbox } from 'semantic-ui-react'



export default function PageC() {

    const [input1, setInput1] = useState(0)
    const [input2, setInput2] = useState(0)

    const [result1, setResult1] = useState(0)
    const [result2, setResult2] = useState(0)


    const changeInput1 = (e) => {
        setInput1(e.target.value)
    }
    const changeInput2 = (e) => {
        setInput2(e.target.value)
    }

    const submitInput1 = async (e) => {
        try {
            const { data: response } = await axios.get(`http://localhost:3001/money/${input1}`);
            setResult1(response)
        } catch (error) {
            console.error(error)
        }
    }

    const submitInput2 = async (e) => {
        try {
            const { data: response } = await axios.get(`http://localhost:3001/receipt2000/${input2}`);
            setResult2(response)
        } catch (error) {
            console.error(error)
        }
    }

    return (
        <>
            {/* Get_Total_Money_Of_Hoc_Vien */}
            <Header as='h2'>Tính tổng số tiền cần thanh toán của 1 học viên</Header>
            <Container>
                <Form>
                    <Form.Field>
                        <label>Mã học viên</label>
                        <Input placeholder='' type='number' value={input1} onChange={changeInput1} />
                    </Form.Field>
                    <Button type='submit' onClick={submitInput1}>Submit</Button>
                </Form>
                <Header as='h3'>Tổng số tiền: {result1}</Header>
            </Container>


            {/* Total_Bien_Lai_Greater_Than_20000 */}
            <Header as='h2'>Tính tổng số biên lai lớn hơn ngưỡng</Header>
            <Container>
                <Form>
                    <Form.Field>
                        <label>Ngưỡng</label>
                        <Input placeholder='' type='number' value={input2} onChange={changeInput2} />
                    </Form.Field>
                    <Button type='submit' onClick={submitInput2}>Submit</Button>
                </Form>
                <Header as='h3'>Tổng số tiền: {result2}</Header>
            </Container>

        </>
    );
};

