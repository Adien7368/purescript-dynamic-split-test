// import * as Flow1 from './../Flows.Flow1/index.js';

export function dflow (onError, onSuccess) {
    // Comment below line to disable dynamic import
    // and Uncomment import and 7 line to create a single bundle
    import ('./../Flows.Flow1/index.js').then(module => onSuccess(module.flow)).catch(e => console.error(e));
    // onSuccess(Flow1.flow) 

    return function (cancelError, onCancelerError, onCancelerSuccess) {
      onCancelerSuccess();
    };
  };