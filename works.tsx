import React, { useState } from 'react';
import Header from '@/components/Header';
// import gsap from 'gsap';
// // import { ScrollTrigger } from 'gsap/ScrollTrigger';
// // import { SliderBox } from '@/components/SliderBox';

// // images
// import banner from '@/images/about/banner.svg';
// import {
//   // BigPlus,
//   TopRightArrow,
// } from '@/components/Icons';
// import { Link } from 'gatsby';
import Footer from '@/components/Footer';
// import chair from '../images/about/chair.png';
// import vidpattern from '../images/vidpattern.png';
// // particles
// import ellipse6 from '../images/particles/Ellipse 6.svg';
// import polygon3 from '../images/particles/Polygon 3.svg';
// import ellipse2 from '../images/particles/Ellipse 2.svg';
// import ellipse5 from '../images/particles/Ellipse 5.svg';
// import polygon1 from '../images/particles/Polygon 1.svg';
// import rectangle11 from '../images/particles/Rectangle 11.svg';
// // people
// import person1 from '../images/people/Rectangle 39.png';
// import person2 from '../images/people/Rectangle 40.png';
// import person3 from '../images/people/Rectangle 41.png';
// import person4 from '../images/people/Rectangle 42.png';
// import person5 from '../images/people/Rectangle 43.png';
// import person6 from '../images/people/Rectangle 44.png';
// import person7 from '../images/people/Rectangle 45.png';
// import person8 from '../images/people/Rectangle 46.png';
// import person9 from '../images/people/Rectangle 47.png';
// import person10 from '../images/people/Rectangle 48.png';
// import person11 from '../images/people/Rectangle 49.png';
// import person12 from '../images/people/Rectangle 50.png';

const CardSlider: React.FC = () => {
  const [activeIndex, setActiveIndex] = useState(0);

  const handlePrev = () => {
    setActiveIndex((prevIndex) => (prevIndex === 0 ? 0 : prevIndex - 1));
  };

  const handleNext = () => {
    setActiveIndex((prevIndex) =>
      prevIndex === data.length - 1 ? prevIndex : prevIndex + 1,
    );
  };

  const data = [
    {
      id: 1,
      title: 'Card 1',
      description: 'This is card 1.',
      imageUrl: 'https://placehold.it/300x200',
    },
    {
      id: 2,
      title: 'Card 2',
      description: 'This is card 2.',
      imageUrl: 'https://placehold.it/300x200',
    },
    {
      id: 3,
      title: 'Card 3',
      description: 'This is card 3.',
      imageUrl: 'https://placehold.it/300x200',
    },
  ];

  return (
    <div className="flex items-center justify-center h-screen">
      <div className="w-1/2">
        <div className="relative">
          {data.map((card, index) => (
            <div
              key={card.id}
              className={`absolute top-0 left-0 w-full h-full transition-opacity duration-300 ${
                activeIndex === index
                  ? 'opacity-100'
                  : 'opacity-0 pointer-events-none'
              }`}
            >
              <div className="bg-white shadow-lg rounded-lg p-4">
                <img
                  className="w-full h-40 object-cover mb-4"
                  src={card.imageUrl}
                  alt={card.title}
                />
                <h2 className="text-lg font-bold mb-2">{card.title}</h2>
                <p>{card.description}</p>
              </div>
            </div>
          ))}
        </div>
        <div className="flex justify-center mt-4">
          <button
            className="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded-full mr-2"
            onClick={handlePrev}
          >
            Prev
          </button>
          <button
            className="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded-full"
            onClick={handleNext}
          >
            Next
          </button>
        </div>
      </div>
    </div>
  );
};

function Works() {
  return (
    <div
      className=" bg-thm-background text-thm-on-background flex flex-col items-center justify-center max-w-[100%]
      overflow-x-hidden md:overflow-x-auto bg-black"
    >
      <CardSlider />
      <Header dark />
      <Footer dark />
    </div>
  );
}
export default Works;
