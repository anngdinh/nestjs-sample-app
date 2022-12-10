import React, { Component, useState } from "react";

import "semantic-ui-css/semantic.min.css";

import {
  Button,
  Divider,
  Grid,
  Icon,
  Input,
  Image,
  Label,
  Menu,
  Table
} from "semantic-ui-react";

import MyHeader from "./components/MyHeader";
import PageA from "./components/PageA";
import PageC from "./components/PageC";

export default function HomePage() {
  const PageSw = {
    pageA: 'pageA',
    pageB: 'pageB',

    pageC: 'pageC',
  }

  const [page, setPage] = useState(PageSw.pageC); // change default page here

  const handleItemClick = (e, { name }) => setPage(name)

  return (
    <div className="App">
      <MyHeader></MyHeader>

      <Grid padded>
        <Grid.Column
          tablet={3}
          computer={3}
          only="tablet computer"
        >
          <Menu vertical borderless fluid text id="sidebar">
            <Menu.Item>
              <Menu.Header>GENERAL</Menu.Header>
              <Menu.Menu>
                <Menu.Item
                >
                  <Icon name={PageSw.dashboard} />
                  Dashboard
                </Menu.Item>
                <Menu.Item
                >
                  <Icon name={PageSw.setting} />
                  Setting
                </Menu.Item>
              </Menu.Menu>
            </Menu.Item>
            <Menu.Item>
              <Menu.Header>Menu</Menu.Header>
              <Menu.Menu>
                <Menu.Item
                  name={PageSw.pageA}
                  active={page === PageSw.pageA}
                  onClick={handleItemClick}>
                  <Icon name='file outline' />
                  Bien lai thu tien
                </Menu.Item>
                {/* <Menu.Item
                  name={PageSw.allPayroll}
                  active={page === PageSw.allPayroll}
                  onClick={handleItemClick}>
                  <Icon name='list' />
                  All Payroll
                </Menu.Item>*/}
                <Menu.Item
                  name={PageSw.pageC}
                  active={page === PageSw.pageC}
                  onClick={handleItemClick}>
                  <Icon name='file outline' />
                  Function
                </Menu.Item>
              </Menu.Menu>
            </Menu.Item>
          </Menu>
        </Grid.Column>


        <Grid.Column
          mobile={16}
          tablet={13}
          computer={13}
          floated="right"
          id="content"
        >
          <div style={{ display: page === PageSw.pageA ? 'block' : 'none' }}>
            <PageA></PageA>
          </div>

          {/* <div style={{ display: page === PageSw.allPayroll ? 'block' : 'none' }}>
            <AllPayroll></AllPayroll>
          </div> */}

          <div style={{ display: page === PageSw.pageC ? 'block' : 'none' }}>
            <PageC></PageC>
          </div>
        </Grid.Column>
      </Grid>
    </div>
  );

};
