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
import PageB from "./components/PageB";
import PageB2 from "./components/PageB2";
import PageC from "./components/PageC";

export default function HomePage() {
  const PageSw = {
    pageA: 'pageA',
    pageB: 'pageB',
    pageB2: 'pageB2',
    pageC: 'pageC',
  }

  const [page, setPage] = useState(PageSw.pageB); // change default page here

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
                <Menu.Item
                  name={PageSw.pageB}
                  active={page === PageSw.pageB}
                  onClick={handleItemClick}>
                  <Icon name='money bill alternate outline' />
                  Biên lai thu tiền
                </Menu.Item>
                <Menu.Item
                  name={PageSw.pageB2}
                  active={page === PageSw.pageB2}
                  onClick={handleItemClick}>
                  <Icon name='list' />
                  Quản lý hóa đơn
                </Menu.Item>
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

          <div style={{ display: page === PageSw.pageB ? 'block' : 'none' }}>
            <PageB></PageB>
          </div>

          <div style={{ display: page === PageSw.pageB2 ? 'block' : 'none' }}>
            <PageB2></PageB2>
          </div>

          <div style={{ display: page === PageSw.pageC ? 'block' : 'none' }}>
            <PageC></PageC>
          </div>
        </Grid.Column>
      </Grid>
    </div>
  );

};
