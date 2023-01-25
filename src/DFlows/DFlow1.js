
export function dflow (onError, onSuccess) {
    import ('./../Flows.Flow1/index.js').then(module => onSuccess(module.flow)).catch(e => console.error(e));
    return function (cancelError, onCancelerError, onCancelerSuccess) {
      onCancelerSuccess();
    };
  };