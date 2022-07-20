import pMemoize from "p-memoize";

async function hax() {
    return true;
}

const newHax = pMemoize(hax);

const result = true;

async function boot() {
    const result = newHax();

    console.log("result", result);
}

boot();
