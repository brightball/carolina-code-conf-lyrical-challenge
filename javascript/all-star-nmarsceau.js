// Somebody once told me the world is gonna roll me
function somebody() {
	me.addEventListener('told', receiveMessage, { once: true });
	me.dispatchEvent(new CustomEvent('told', { detail: "The world is gonna roll you" }));
}
