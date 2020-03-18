--
-- Name: exchange_closed_orders; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE exchange_closed_orders (
    id bigint NOT NULL,
    last_updated timestamp without time zone NOT NULL,
    update_count integer NOT NULL,
    account character varying(255),
    clord_id character varying(255) NOT NULL,
    cum_qty numeric(17,7),
    ex_destination character varying(255),
    ext_qty numeric(17,7),
    instrument character varying(255),
    last_exec_time timestamp without time zone,
    last_px numeric(17,7),
    last_qty numeric(17,7),
    max_floor numeric(17,7),
    order_id character varying(255) NOT NULL,
    order_price numeric(17,7),
    order_qty numeric(17,7) NOT NULL,
    order_status character varying(255) NOT NULL,
    order_type character varying(255) NOT NULL,
    orig_clord_id character varying(255),
    session_id character varying(255) NOT NULL,
    side character varying(255) NOT NULL,
    stop_price numeric(17,7),
    time_in_force character varying(255) NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    current_message_id bigint,
    exchange_id bigint NOT NULL,
    order_book_id bigint
);


--
-- Name: exchange_marketdata_content; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE exchange_marketdata_content (
    request_id bigint NOT NULL,
    content character varying(255)
);


--
-- Name: exchange_marketdata_exchanges; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE exchange_marketdata_exchanges (
    request_id bigint NOT NULL,
    exchange_id bigint NOT NULL
);


--
-- Name: exchange_marketdata_instruments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE exchange_marketdata_instruments (
    request_id bigint NOT NULL,
    instruments character varying(255)
);


--
-- Name: exchange_marketdata_requests; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE exchange_marketdata_requests (
    id bigint NOT NULL,
    last_updated timestamp without time zone NOT NULL,
    update_count integer NOT NULL,
    all_exchanges boolean,
    all_instruments boolean,
    request_id character varying(255) NOT NULL,
    request_type character(1) NOT NULL,
    session_id character varying(255) NOT NULL,
    update_type integer NOT NULL,
    request_message_id bigint NOT NULL
);


--
-- Name: exchange_open_orders; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE exchange_open_orders (
    id bigint NOT NULL,
    last_updated timestamp without time zone NOT NULL,
    update_count integer NOT NULL,
    account character varying(255),
    clord_id character varying(255) NOT NULL,
    cum_qty numeric(17,7),
    ex_destination character varying(255),
    ext_qty numeric(17,7),
    instrument character varying(255),
    last_exec_time timestamp without time zone,
    last_px numeric(17,7),
    last_qty numeric(17,7),
    max_floor numeric(17,7),
    order_id character varying(255) NOT NULL,
    order_price numeric(17,7),
    order_qty numeric(17,7) NOT NULL,
    order_status character varying(255) NOT NULL,
    order_type character varying(255) NOT NULL,
    orig_clord_id character varying(255),
    session_id character varying(255) NOT NULL,
    side character varying(255) NOT NULL,
    stop_price numeric(17,7),
    time_in_force character varying(255) NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    current_message_id bigint,
    exchange_id bigint NOT NULL,
    order_book_id bigint
);


--
-- Name: exchange_orderbook_stats; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE exchange_orderbook_stats (
    id bigint NOT NULL,
    last_updated timestamp without time zone NOT NULL,
    update_count integer NOT NULL,
    close_time timestamp without time zone,
    close_px numeric(17,7),
    close_qty numeric(17,7),
    high_time timestamp without time zone,
    high_px numeric(17,7),
    high_qty numeric(17,7),
    last_time timestamp without time zone,
    last_px numeric(17,7),
    last_qty numeric(17,7),
    low_time timestamp without time zone,
    low_px numeric(17,7),
    low_qty numeric(17,7),
    open_time timestamp without time zone,
    open_px numeric(17,7),
    open_qty numeric(17,7),
    prev_close_time timestamp without time zone,
    prev_close_px numeric(17,7),
    prev_close_qty numeric(17,7),
    total_value numeric(17,7),
    volume numeric(17,7),
    vwap numeric(17,7)
);


--
-- Name: exchange_orderbooks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE exchange_orderbooks (
    id bigint NOT NULL,
    last_updated timestamp without time zone NOT NULL,
    update_count integer NOT NULL,
    instrument character varying(255) NOT NULL,
    msg_seq_num integer,
    sending_time timestamp without time zone,
    exchange_id bigint NOT NULL,
    stats_id bigint
);


--
-- Name: exchange_trade_details; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE exchange_trade_details (
    id bigint NOT NULL,
    last_updated timestamp without time zone NOT NULL,
    update_count integer NOT NULL,
    buy_order_id character varying(255) NOT NULL,
    exchange character varying(255),
    exec_time timestamp without time zone NOT NULL,
    instrument character varying(255) NOT NULL,
    price numeric(19,2),
    sell_order_id character varying(255) NOT NULL,
    size numeric(19,2)
);


--
-- Name: exchanges; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE exchanges (
    id bigint NOT NULL,
    last_updated timestamp without time zone NOT NULL,
    update_count integer NOT NULL,
    description character varying(255),
    name character varying(255) NOT NULL
);


--
-- Name: handled_messages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE handled_messages (
    id bigint NOT NULL,
    last_updated timestamp without time zone NOT NULL,
    update_count integer NOT NULL,
    msg_seq_num integer NOT NULL,
    sending_time timestamp without time zone NOT NULL,
    session_id character varying(255) NOT NULL
);


--
-- Name: sixer_config; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE sixer_config (
    id bigint NOT NULL,
    last_updated timestamp without time zone NOT NULL,
    update_count integer NOT NULL,
    forced_profit_ticks integer NOT NULL,
    repricing_interval bigint NOT NULL
);


--
-- Name: sixer_ipos; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE sixer_ipos (
    id bigint NOT NULL,
    last_updated timestamp without time zone NOT NULL,
    update_count integer NOT NULL,
    buy_px numeric(17,7) NOT NULL,
    release_date timestamp without time zone NOT NULL,
    security_type character varying(255) NOT NULL,
    sell_px numeric(17,7) NOT NULL,
    symbol character varying(255) NOT NULL
);


--
-- Name: sixer_lots; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE sixer_lots (
    id bigint NOT NULL,
    last_updated timestamp without time zone NOT NULL,
    update_count integer NOT NULL,
    alloc_qty numeric(17,7) NOT NULL,
    basis_px numeric(17,7) NOT NULL,
    effective_date timestamp without time zone NOT NULL,
    gain numeric(17,7) NOT NULL,
    qty numeric(17,7) NOT NULL,
    security_type character varying(255) NOT NULL,
    symbol character varying(255) NOT NULL,
    trade_px numeric(17,7) NOT NULL,
    position_id bigint NOT NULL,
    trade_id bigint NOT NULL,
    user_id bigint NOT NULL
);


--
-- Name: sixer_managed_orders; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE sixer_managed_orders (
    id bigint NOT NULL,
    last_updated timestamp without time zone NOT NULL,
    update_count integer NOT NULL,
    buy_order_id character varying(255),
    buy_ord_px numeric(17,7),
    buy_root_order_id character varying(255),
    security_type character varying(255) NOT NULL,
    sell_order_id character varying(255),
    sell_ord_px numeric(17,7),
    sell_root_order_id character varying(255),
    symbol character varying(255) NOT NULL
);


--
-- Name: sixer_marketdata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE sixer_marketdata (
    id bigint NOT NULL,
    last_updated timestamp without time zone NOT NULL,
    update_count integer NOT NULL,
    close numeric(17,7) NOT NULL,
    high numeric(17,7) NOT NULL,
    low numeric(17,7) NOT NULL,
    max_outlay numeric(17,7) NOT NULL,
    open numeric(17,7) NOT NULL,
    security_type character varying(255) NOT NULL,
    shares_outstanding numeric(17,7) NOT NULL,
    symbol character varying(255) NOT NULL,
    volume numeric(17,7) NOT NULL,
    vwap numeric(17,7) NOT NULL,
    ask_id bigint,
    bid_id bigint,
    last_trade_id bigint
);


--
-- Name: sixer_marketdata_elements; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE sixer_marketdata_elements (
    id bigint NOT NULL,
    last_updated timestamp without time zone NOT NULL,
    update_count integer NOT NULL,
    price numeric(17,7) NOT NULL,
    security_type character varying(255) NOT NULL,
    size numeric(17,7) NOT NULL,
    symbol character varying(255) NOT NULL,
    md_timestamp timestamp without time zone NOT NULL,
    marketdata_type character varying(255) NOT NULL
);


--
-- Name: sixer_order_status; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE sixer_order_status (
    id bigint NOT NULL,
    last_updated timestamp without time zone NOT NULL,
    update_count integer NOT NULL,
    avg_px numeric(17,7) NOT NULL,
    cum_qty numeric(17,7) NOT NULL,
    last_px numeric(17,7) NOT NULL,
    last_qty numeric(17,7) NOT NULL,
    leaves_qty numeric(17,7) NOT NULL,
    ord_px numeric(17,7) NOT NULL,
    ord_qty numeric(17,7) NOT NULL,
    order_status character varying(255) NOT NULL,
    security_type character varying(255) NOT NULL,
    symbol character varying(255) NOT NULL,
    trans_time timestamp without time zone NOT NULL,
    order_id bigint NOT NULL,
    user_id bigint NOT NULL
);


--
-- Name: sixer_placed_orders; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE sixer_placed_orders (
    id bigint NOT NULL,
    last_updated timestamp without time zone NOT NULL,
    update_count integer NOT NULL,
    price numeric(17,7) NOT NULL,
    quantity numeric(17,7) NOT NULL,
    security_type character varying(255) NOT NULL,
    side character varying(255) NOT NULL,
    symbol character varying(255) NOT NULL,
    order_id character varying(255) NOT NULL,
    root_order_id character varying(255) NOT NULL,
    user_id bigint NOT NULL
);


--
-- Name: sixer_pnl; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE sixer_pnl (
    id bigint NOT NULL,
    last_updated timestamp without time zone NOT NULL,
    update_count integer NOT NULL,
    basis_price numeric(17,7) NOT NULL,
    effective_date timestamp without time zone NOT NULL,
    "position" numeric(17,7) NOT NULL,
    realized_gain numeric(17,7) NOT NULL,
    security_type character varying(255) NOT NULL,
    symbol character varying(255) NOT NULL,
    unrealized_gain numeric(17,7) NOT NULL,
    user_id bigint NOT NULL
);


--
-- Name: sixer_positions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE sixer_positions (
    id bigint NOT NULL,
    last_updated timestamp without time zone NOT NULL,
    update_count integer NOT NULL,
    effective_date timestamp without time zone NOT NULL,
    "position" numeric(17,7) NOT NULL,
    pos_px numeric(17,7) NOT NULL,
    pos_qty numeric(17,7) NOT NULL,
    realized_gain numeric(17,7) NOT NULL,
    security_type character varying(255) NOT NULL,
    symbol character varying(255) NOT NULL,
    unrealized_gain numeric(17,7) NOT NULL,
    avg_cost numeric(17,7) NOT NULL,
    user_id bigint NOT NULL
);


--
-- Name: sixer_trade_data; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE sixer_trade_data (
    id bigint NOT NULL,
    last_updated timestamp without time zone NOT NULL,
    update_count integer NOT NULL,
    amt_paid numeric(17,7) NOT NULL,
    amount_received numeric(17,7) NOT NULL,
    buy_px numeric(17,7) NOT NULL,
    buy_qty numeric(17,7) NOT NULL,
    buy_sell_diff numeric(17,7) NOT NULL,
    buy_total_shares numeric(17,7) NOT NULL,
    buy_xaction numeric(17,7) NOT NULL,
    calc_sell_px numeric(17,7) NOT NULL,
    px_chg numeric(17,7) NOT NULL,
    end_time timestamp without time zone NOT NULL,
    vwap_sell_px_frcd numeric(17,7) NOT NULL,
    int_qty numeric(17,7) NOT NULL,
    net_amt numeric(17,7) NOT NULL,
    new_buy_px numeric(17,7) NOT NULL,
    new_sell_px numeric(17,7) NOT NULL,
    security_type character varying(255) NOT NULL,
    sell_px numeric(17,7) NOT NULL,
    sell_qty numeric(17,7) NOT NULL,
    sell_total_shares numeric(17,7) NOT NULL,
    sell_xaction numeric(17,7) NOT NULL,
    shares_outstanding numeric(17,7) NOT NULL,
    shares_traded_log numeric(17,7) NOT NULL,
    shares_traded_pct numeric(17,7) NOT NULL,
    symbol character varying(255) NOT NULL,
    vwap_sell_px numeric(17,7) NOT NULL
);


--
-- Name: sixer_trades; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE sixer_trades (
    id bigint NOT NULL,
    last_updated timestamp without time zone NOT NULL,
    update_count integer NOT NULL,
    exec_id character varying(255) NOT NULL,
    price numeric(17,7) NOT NULL,
    quantity numeric(17,7) NOT NULL,
    security_type character varying(255) NOT NULL,
    symbol character varying(255) NOT NULL,
    transact_time timestamp without time zone NOT NULL
);


--
-- Name: sixer_user_trades; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE sixer_user_trades (
    id bigint NOT NULL,
    last_updated timestamp without time zone NOT NULL,
    update_count integer NOT NULL,
    order_id character varying(255) NOT NULL,
    side character varying(255) NOT NULL,
    trade_data_computed boolean NOT NULL,
    pnl_id bigint NOT NULL,
    trade_id bigint NOT NULL,
    user_id bigint NOT NULL
);


--
-- Name: sixer_users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE sixer_users (
    id bigint NOT NULL,
    last_updated timestamp without time zone NOT NULL,
    update_count integer NOT NULL,
    user_id bigint NOT NULL
);


--
-- Name: exchange_closed_orders exchange_closed_orders_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY exchange_closed_orders
    ADD CONSTRAINT exchange_closed_orders_pkey PRIMARY KEY (id);


--
-- Name: exchange_marketdata_exchanges exchange_marketdata_exchanges_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY exchange_marketdata_exchanges
    ADD CONSTRAINT exchange_marketdata_exchanges_pkey PRIMARY KEY (request_id, exchange_id);


--
-- Name: exchange_marketdata_requests exchange_marketdata_requests_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY exchange_marketdata_requests
    ADD CONSTRAINT exchange_marketdata_requests_pkey PRIMARY KEY (id);


--
-- Name: exchange_open_orders exchange_open_orders_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY exchange_open_orders
    ADD CONSTRAINT exchange_open_orders_pkey PRIMARY KEY (id);


--
-- Name: exchange_orderbook_stats exchange_orderbook_stats_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY exchange_orderbook_stats
    ADD CONSTRAINT exchange_orderbook_stats_pkey PRIMARY KEY (id);


--
-- Name: exchange_orderbooks exchange_orderbooks_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY exchange_orderbooks
    ADD CONSTRAINT exchange_orderbooks_pkey PRIMARY KEY (id);


--
-- Name: exchange_trade_details exchange_trade_details_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY exchange_trade_details
    ADD CONSTRAINT exchange_trade_details_pkey PRIMARY KEY (id);


--
-- Name: exchanges exchanges_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY exchanges
    ADD CONSTRAINT exchanges_pkey PRIMARY KEY (id);


--
-- Name: handled_messages handled_messages_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY handled_messages
    ADD CONSTRAINT handled_messages_pkey PRIMARY KEY (id);


--
-- Name: sixer_config sixer_config_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sixer_config
    ADD CONSTRAINT sixer_config_pkey PRIMARY KEY (id);


--
-- Name: sixer_ipos sixer_ipos_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sixer_ipos
    ADD CONSTRAINT sixer_ipos_pkey PRIMARY KEY (id);


--
-- Name: sixer_lots sixer_lots_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sixer_lots
    ADD CONSTRAINT sixer_lots_pkey PRIMARY KEY (id);


--
-- Name: sixer_managed_orders sixer_managed_orders_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sixer_managed_orders
    ADD CONSTRAINT sixer_managed_orders_pkey PRIMARY KEY (id);


--
-- Name: sixer_marketdata_elements sixer_marketdata_elements_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sixer_marketdata_elements
    ADD CONSTRAINT sixer_marketdata_elements_pkey PRIMARY KEY (id);


--
-- Name: sixer_marketdata sixer_marketdata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sixer_marketdata
    ADD CONSTRAINT sixer_marketdata_pkey PRIMARY KEY (id);


--
-- Name: sixer_order_status sixer_order_status_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sixer_order_status
    ADD CONSTRAINT sixer_order_status_pkey PRIMARY KEY (id);


--
-- Name: sixer_placed_orders sixer_placed_orders_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sixer_placed_orders
    ADD CONSTRAINT sixer_placed_orders_pkey PRIMARY KEY (id);


--
-- Name: sixer_pnl sixer_pnl_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sixer_pnl
    ADD CONSTRAINT sixer_pnl_pkey PRIMARY KEY (id);


--
-- Name: sixer_positions sixer_positions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sixer_positions
    ADD CONSTRAINT sixer_positions_pkey PRIMARY KEY (id);


--
-- Name: sixer_trade_data sixer_trade_data_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sixer_trade_data
    ADD CONSTRAINT sixer_trade_data_pkey PRIMARY KEY (id);


--
-- Name: sixer_trades sixer_trades_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sixer_trades
    ADD CONSTRAINT sixer_trades_pkey PRIMARY KEY (id);


--
-- Name: sixer_user_trades sixer_user_trades_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sixer_user_trades
    ADD CONSTRAINT sixer_user_trades_pkey PRIMARY KEY (id);


--
-- Name: sixer_users sixer_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sixer_users
    ADD CONSTRAINT sixer_users_pkey PRIMARY KEY (id);


--
-- Name: exchange_marketdata_requests uk5877ujx0mwihr8yf8gsmmbght; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY exchange_marketdata_requests
    ADD CONSTRAINT uk5877ujx0mwihr8yf8gsmmbght UNIQUE (session_id, request_id);


--
-- Name: sixer_managed_orders uk97juwltur0n70n7l1grxiwgj; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sixer_managed_orders
    ADD CONSTRAINT uk97juwltur0n70n7l1grxiwgj UNIQUE (symbol, security_type);


--
-- Name: sixer_ipos uk9fbhw2u9dvcfuyhtr0mueukq3; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sixer_ipos
    ADD CONSTRAINT uk9fbhw2u9dvcfuyhtr0mueukq3 UNIQUE (symbol, security_type);


--
-- Name: handled_messages uk9qnmh9hhwf5p63to7me9njlta; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY handled_messages
    ADD CONSTRAINT uk9qnmh9hhwf5p63to7me9njlta UNIQUE (session_id, sending_time, msg_seq_num);


--
-- Name: exchanges uk_audub79aov0jfwwpatgpcgn7; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY exchanges
    ADD CONSTRAINT uk_audub79aov0jfwwpatgpcgn7 UNIQUE (name);


--
-- Name: exchange_marketdata_requests uk_gcuhgqc4wxxpcdmxebhmtpi8g; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY exchange_marketdata_requests
    ADD CONSTRAINT uk_gcuhgqc4wxxpcdmxebhmtpi8g UNIQUE (request_message_id);


--
-- Name: sixer_placed_orders ukefpcae37oaml7q2yxjobr807o; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sixer_placed_orders
    ADD CONSTRAINT ukefpcae37oaml7q2yxjobr807o UNIQUE (order_id);


--
-- Name: sixer_users ukilc1jhue6xb61ibhpxmnbmiok; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sixer_users
    ADD CONSTRAINT ukilc1jhue6xb61ibhpxmnbmiok UNIQUE (user_id);


--
-- Name: sixer_order_status ukmqnkofcv9si13kg27otduqpi; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sixer_order_status
    ADD CONSTRAINT ukmqnkofcv9si13kg27otduqpi UNIQUE (order_id);


--
-- Name: sixer_marketdata fk3hqrrr2p7mrb1k8kcq23xwk2f; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sixer_marketdata
    ADD CONSTRAINT fk3hqrrr2p7mrb1k8kcq23xwk2f FOREIGN KEY (bid_id) REFERENCES sixer_marketdata_elements(id);


--
-- Name: exchange_marketdata_content fk4yx8l8bs5522kx94psxnwup4r; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY exchange_marketdata_content
    ADD CONSTRAINT fk4yx8l8bs5522kx94psxnwup4r FOREIGN KEY (request_id) REFERENCES exchange_marketdata_requests(id);


--
-- Name: exchange_closed_orders fk5gr96iefy8kr4e32lsvcqtfa1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY exchange_closed_orders
    ADD CONSTRAINT fk5gr96iefy8kr4e32lsvcqtfa1 FOREIGN KEY (exchange_id) REFERENCES exchanges(id);


--
-- Name: exchange_orderbooks fk739gpy7ltl7oxxbdguf4t5rxh; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY exchange_orderbooks
    ADD CONSTRAINT fk739gpy7ltl7oxxbdguf4t5rxh FOREIGN KEY (exchange_id) REFERENCES exchanges(id);


--
-- Name: sixer_user_trades fk818t44raaili8r0s6y4b423jk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sixer_user_trades
    ADD CONSTRAINT fk818t44raaili8r0s6y4b423jk FOREIGN KEY (user_id) REFERENCES sixer_users(id);


--
-- Name: sixer_order_status fk8tdnuvlivcc7x4l77xvpkv4y; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sixer_order_status
    ADD CONSTRAINT fk8tdnuvlivcc7x4l77xvpkv4y FOREIGN KEY (user_id) REFERENCES sixer_users(id);


--
-- Name: sixer_pnl fk9ifojjkbd5uxbw1kvpu4oipou; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sixer_pnl
    ADD CONSTRAINT fk9ifojjkbd5uxbw1kvpu4oipou FOREIGN KEY (user_id) REFERENCES sixer_users(id);


--
-- Name: exchange_marketdata_instruments fk9sq03jql7s5l2tllda833ms6u; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY exchange_marketdata_instruments
    ADD CONSTRAINT fk9sq03jql7s5l2tllda833ms6u FOREIGN KEY (request_id) REFERENCES exchange_marketdata_requests(id);


--
-- Name: sixer_positions fka0x0i82ege2ox2ublowanb2xd; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sixer_positions
    ADD CONSTRAINT fka0x0i82ege2ox2ublowanb2xd FOREIGN KEY (user_id) REFERENCES sixer_users(id);


--
-- Name: sixer_lots fkarhcoypw89hnhsr3gvrta823j; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sixer_lots
    ADD CONSTRAINT fkarhcoypw89hnhsr3gvrta823j FOREIGN KEY (position_id) REFERENCES sixer_positions(id);


--
-- Name: exchange_open_orders fkb15fo58exoo4wbuv9hha65n8k; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY exchange_open_orders
    ADD CONSTRAINT fkb15fo58exoo4wbuv9hha65n8k FOREIGN KEY (current_message_id) REFERENCES fix_messages(id);


--
-- Name: exchange_closed_orders fkbrj3fucw071syjia8qsm80fpc; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY exchange_closed_orders
    ADD CONSTRAINT fkbrj3fucw071syjia8qsm80fpc FOREIGN KEY (order_book_id) REFERENCES exchange_orderbooks(id);


--
-- Name: exchange_orderbooks fkc1er1wcjrbcwil96v1h1101t4; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY exchange_orderbooks
    ADD CONSTRAINT fkc1er1wcjrbcwil96v1h1101t4 FOREIGN KEY (stats_id) REFERENCES exchange_orderbook_stats(id);


--
-- Name: sixer_placed_orders fkc1fiep809g5c81tjssekyscg5; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sixer_placed_orders
    ADD CONSTRAINT fkc1fiep809g5c81tjssekyscg5 FOREIGN KEY (user_id) REFERENCES sixer_users(id);


--
-- Name: exchange_marketdata_exchanges fkcegggoq9jxrbm6kooj6foo55l; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY exchange_marketdata_exchanges
    ADD CONSTRAINT fkcegggoq9jxrbm6kooj6foo55l FOREIGN KEY (exchange_id) REFERENCES exchanges(id);


--
-- Name: exchange_open_orders fke7ttqeoe9sskpah6cvc2qglbc; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY exchange_open_orders
    ADD CONSTRAINT fke7ttqeoe9sskpah6cvc2qglbc FOREIGN KEY (exchange_id) REFERENCES exchanges(id);


--
-- Name: sixer_marketdata fke9d8apud3xjm8l1l5j3lbfjp4; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sixer_marketdata
    ADD CONSTRAINT fke9d8apud3xjm8l1l5j3lbfjp4 FOREIGN KEY (last_trade_id) REFERENCES sixer_marketdata_elements(id);


--
-- Name: sixer_lots fkf45iny8kfe8ugglx5lj7hhp75; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sixer_lots
    ADD CONSTRAINT fkf45iny8kfe8ugglx5lj7hhp75 FOREIGN KEY (user_id) REFERENCES sixer_users(id);


--
-- Name: sixer_user_trades fkhiv83na5uxlkwjo0kj9nywi44; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sixer_user_trades
    ADD CONSTRAINT fkhiv83na5uxlkwjo0kj9nywi44 FOREIGN KEY (trade_id) REFERENCES sixer_trades(id);


--
-- Name: exchange_marketdata_exchanges fkiipdce2tt83eedh1o0q0cnid1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY exchange_marketdata_exchanges
    ADD CONSTRAINT fkiipdce2tt83eedh1o0q0cnid1 FOREIGN KEY (request_id) REFERENCES exchange_marketdata_requests(id);


--
-- Name: sixer_marketdata fkj5gls5as27vcayy28wsm64wuh; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sixer_marketdata
    ADD CONSTRAINT fkj5gls5as27vcayy28wsm64wuh FOREIGN KEY (ask_id) REFERENCES sixer_marketdata_elements(id);


--
-- Name: sixer_lots fkj5hd28ls5mvx4tq0c7jroy354; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sixer_lots
    ADD CONSTRAINT fkj5hd28ls5mvx4tq0c7jroy354 FOREIGN KEY (trade_id) REFERENCES sixer_trades(id);


--
-- Name: sixer_user_trades fkjjjwjgxu0i9eqvcbu8colmjkx; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sixer_user_trades
    ADD CONSTRAINT fkjjjwjgxu0i9eqvcbu8colmjkx FOREIGN KEY (pnl_id) REFERENCES sixer_pnl(id);


--
-- Name: sixer_order_status fkkormh5ihprj7oqp1bvec9viol; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sixer_order_status
    ADD CONSTRAINT fkkormh5ihprj7oqp1bvec9viol FOREIGN KEY (order_id) REFERENCES sixer_placed_orders(id);


--
-- Name: exchange_closed_orders fkotkth3746rdq2m2jn8hdsx4m2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY exchange_closed_orders
    ADD CONSTRAINT fkotkth3746rdq2m2jn8hdsx4m2 FOREIGN KEY (current_message_id) REFERENCES fix_messages(id);


--
-- Name: exchange_marketdata_requests fkqrhpib4mm1j5cbebo4tk2xv89; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY exchange_marketdata_requests
    ADD CONSTRAINT fkqrhpib4mm1j5cbebo4tk2xv89 FOREIGN KEY (request_message_id) REFERENCES fix_messages(id);


--
-- Name: exchange_open_orders fkr3q3paioxdg81f88ycto2coqc; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY exchange_open_orders
    ADD CONSTRAINT fkr3q3paioxdg81f88ycto2coqc FOREIGN KEY (order_book_id) REFERENCES exchange_orderbooks(id);
