import styled from "styled-components";
import _ from 'lodash';
import axios from "axios";
import { useState, useEffect } from 'react';

import { Icon, Input, Label, Menu, Table, Button, Header, Step, Container, Form, Dropdown, Segment, Accordion, Checkbox } from 'semantic-ui-react'



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
    

    return (
        <>
            
            
        </>
    );
};

