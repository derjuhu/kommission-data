# Kommission Data

This repo holds the static json data and images for [oesterreichische-geschichte.at](https://oesterreichische-geschichte.at/#/home)

The data can be edited by using the Kommission Editor [Link to editor]

## Folder Structure

- `/dynamicData` - contains the json data for the app
  - `/dynamicData/[page-name]` - contains the json data for the editor
    - `/dynamicData/[page-name]/[page-name].json` - contains the json data for the page

## Data Types

This is a list of all the interfaces used for the individual pages.

### Adding & Editing Data

To edit a data type you have to consider the following things:

- Kommission-Dev Repo
  - Edit the typescript interface definition in the kommission-dev project in the according component
  - Make sure that the component also supports the old data format or change the api conversion scripts and regenerate the data file.
- Kommission-Editor Repo
  - [To be written]
- Kommission-Data Repo
  - Make sure all data file in this repo are still compatible with the changes
  - **Document the changes in the Datatypes list below**

### Implemented Interfaces:

- aktuelles:
  - ```typescript
    interface AktuelleInformationenAPIEntry {
      title: string;
      date: Date; //humanly formated date
      text: string;
      image: string;
      createDate: number;
      moreLink: string;
    }
    ```
- mitglieder & mitglieder-vorstand
  - ```typescript
    interface MitgliederAPIEntry {
      name: string;
      position: string;
      www: string;
      orcId: string;
      viafId: string;
      pic: string;
      textBio: number;
      createDate: number;
    }
    ```
- projekte-[abgeschlossene,assozierte,laufend]
  - ```typescript
    interface projekteAPIEntry {
      title: string;
      text: string;
      fulltext: string;
      kontaktTitle: string;
      kontaktEmail: string;
      textInfos: string;
      pic: string;
      pictureCaption: string;
      createDate: number;
    }
    ```
- veroffentlichungen
  - ```typescript
    interface VeroffentlichungenAPIEntry {
      volNr: number;
      name: string;
      mainTitle: string;
      date: number;
      member: string;
      doi: string;
      pdf: string;
      pic: string;
      textCit: string;
      createDate: number;
    }
    ```
