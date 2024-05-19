import { billPage } from './bill-page';
import { homePage } from './home-page';
import { landPage } from './land-page';
import { loginPage } from './login-page';
import { overviewPage } from './overview-page';
import { stakeholderPage } from './stakeholder-page';

export const pages: { [key: string]: any } = {
    login: loginPage,
    home: homePage,
    overview: overviewPage,
    stakeholder: stakeholderPage,
    land: landPage,
    bill: billPage,
};
