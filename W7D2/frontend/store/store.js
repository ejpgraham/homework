import { createStore, applyMiddleware } from 'redux';
import RootReducer from '../reducers/root_reducer';

const configureStore = (preloadedState = {}) => {
  const store = createStore(RootReducer, preloadedState, applyMiddleware(addLoggingToDispatch));
  store.subscribe(() => {
    localStorage.state = JSON.stringify(store.getState());
  });
  return store;
}

const addLoggingToDispatch = store => next => action => {
  const OGDispatch = store.dispatch;
  console.log(store.getState());
  console.log(action);
  let returnValue = OGDispatch(action);
  console.log(store.getState());
  return returnValue;
};

export default configureStore;
