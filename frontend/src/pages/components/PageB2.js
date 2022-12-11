import styled from "styled-components";
import _ from 'lodash';
import axios from "axios";
import { useState, useEffect } from 'react';

import { Icon, Input, Label, Menu, Table, Button, Header, Step, Container, Form, Dropdown, Segment, Accordion, Checkbox, Divider } from 'semantic-ui-react'

import { ToastContainer, toast } from 'react-toastify';


export default function PageB2() {

    const [allData, setAllData] = useState([])
    const [min, setMin] = useState(-2147483648)

    useEffect(() => {
        const fetchData = async () => {
            try {
                {
                    const { data: response } = await axios.get('http://localhost:3001/getB2/0');
                    setAllData(response)
                }
            } catch (error) {
                console.error(error)
            }
        };
        fetchData();
    }, [])

    const handleFilter = async () => {
        try {
            {
                const { data: response } = await axios.get(`http://localhost:3001/getB2/${min}`);
                setAllData(response)
            }
        } catch (error) {
            console.error(error)
        }
    }

    return (
        <>

            <Header as='h2' icon textAlign='center'>
                <Icon name='money bill alternate outline' circular />
                <Header.Content>Quản lý hóa đơn</Header.Content>
            </Header>
            <Divider horizontal>
                $$$$
            </Divider>

            <Menu secondary>
                <Input type="number" placeholder='Param' onChange={(e) => setMin(e.target.value)} />
                <Button onClick={handleFilter}>Search</Button>
            </Menu>


            <Container fluid>
                <Table celled>
                    <Table.Header>
                        <Table.Row>
                            <Table.HeaderCell>STT</Table.HeaderCell>
                            <Table.HeaderCell>Mã học viên</Table.HeaderCell>
                            <Table.HeaderCell>Học viên</Table.HeaderCell>
                            <Table.HeaderCell>SDT</Table.HeaderCell>
                            <Table.HeaderCell>So luong</Table.HeaderCell>
                        </Table.Row>
                    </Table.Header>

                    <Table.Body>
                        {
                            allData.map((e, index) => {
                                return <Table.Row key={index}>
                                    <Table.Cell>{index + 1}</Table.Cell>
                                    <Table.Cell>{e.ma_hoc_vien}</Table.Cell>
                                    <Table.Cell>{e.ten}</Table.Cell>
                                    <Table.Cell>{e.sdt}</Table.Cell>
                                    <Table.Cell>{e.So_luong_bien_lai}</Table.Cell>
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

