import React, {Component} from 'react';
import SpeedDialAction from "@material-ui/lab/SpeedDialAction/SpeedDialAction";
import SpeedDial from "@material-ui/lab/SpeedDial/SpeedDial";
import {FontAwesomeIcon} from '@fortawesome/react-fontawesome'
import {faSms} from '@fortawesome/free-solid-svg-icons'
import {faFacebookF, faInstagram, faWhatsapp} from '@fortawesome/free-brands-svg-icons';
import "./SocialFab.css";

export default class SocialFab extends Component {

    state = {
        open: false
    };

    socials = [
        {
            icon: faFacebookF,
            name: 'Facebook'
        },
        {
            icon: faInstagram,
            name: 'Instagram'
        },
        {
            icon: faWhatsapp,
            name: 'WhatsApp'
        }
    ];

    render() {
        return (
            <SpeedDial
                className="social-fab"
                ariaLabel="Social"
                icon={<FontAwesomeIcon icon={faSms} />}
                onClose={this.toggleFab}
                onOpen={this.toggleFab}
                open={this.state.open}
                direction="up"
            >
                {
                    this.socials.map(({icon, name}) => (
                        <SpeedDialAction
                            key={name}
                            icon={<FontAwesomeIcon icon={icon} />}
                            tooltipTitle={name}
                            onClick={() => this.openSocial(name)}
                        />
                    ))
                }
            </SpeedDial>
        );
    }

    toggleFab = () => this.setState(({open}) => ({
        open: !open
    }));

    openSocial = (social) => alert(social);
}