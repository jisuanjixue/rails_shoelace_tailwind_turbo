import { html, LitElement } from 'lit';

export class MyElement extends LitElement {
    createRenderRoot() {
        return this; // turn off shadow dom to access external styles
    }
    render() {
        return html`
           <div>今天的天气很好</div>
    `;
    }
}

window.customElements.define('my-element', MyElement);