import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';


import Root from './components/root';

document.addEventListener('DOMContentLoaded', () => {
  const preloadedState = localStorage.state ?
    JSON.parse(localStorage.state) : {};
  const store = configureStore(preloadedState);
  // const newStore = applyMiddlewares(store, addLoggingToDispatch);
  const root = document.getElementById('content');
  ReactDOM.render(<Root store={store} />, root);
});

// const addLoggingToDispatch = store => next => action => {
//   let dispatch = store.dispatch
//   console.log(store.getState()); // old state
//   console.log(action)
//
//   let results = dispatch(action)
//   console.log(store.getState()); // new state
//
//   return results
// }

// const applyMiddlewares = (store, ...middlewares) => {
//   let dispatch = store.dispatch;
//   middlewares.forEach((middleware) => {
//     dispatch = middleware(store)(dispatch);
//   });
//   return Object.assign({}, store, { dispatch });
// };
