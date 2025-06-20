import Header from "@/components/Header";
import Main from "./Main";

const MeetingStart  = () => {
  return (
    <main className="m-auto bg-gray100 overflow-hidden">
      <Header />

      <div className="flex py-8">
        <Main />
      </div>
    </main>
  );
};

export default MeetingStart;
