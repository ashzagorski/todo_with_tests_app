require 'rails_helper'

RSpec.describe Task, type: :model do
  describe '#toggle_complete!' do
    it 'should switch complete to false if it began as true' do
      task = Task.create(complete: true)
      task.toggle_complete!
      expect(task.complete).to eq(false)
    end

    it 'should switch complete to true if it began as false' do
      task = Task.create(complete: false)
      task.toggle_complete!
      expect(task.complete).to eq(true)
   end
  end 

   describe '#toggle_favorite!' do
    it 'should switch complete to true if it began as true' do
      task = Task.create(favorite: true)
      task.toggle_favorite!
      expect(task.favorite).to eq(false)
    end

    it 'should switch complete to false if it began as true' do
      task = Task.create(favorite: false)
      task.toggle_favorite!
      expect(task.favorite).to eq(true)
   end 
  end 

  describe '#overdo?' do
    it 'should switc'
  end 

  describe '#increment_priority!' do
    it 'should increase priority by 1' do
      task = Task.create(priority: 2)
      task.increment_priority!
      expect(task.priority).to eq(3)
    end 

    it 'should not increase priority past 10' do
      task = Task.create(priority: 10)
      task.increment_priority!
      expect(task.priority).to eq(10)
    end 
  end

  describe '#decrement_priority!' do
    it 'should decrease priority by 1' do
      task = Task.create(priority: 4)
      task.decrement_priority!
      expect(task.priority).to eq(3)
    end 
  end

  describe '#snooze_hour!' do
    it 'should add 1 hour to deadline time' do
      task = Task.create(deadline: Time.now.at_end_of_hour)
      task.snooze_hour!
      expect(task.deadline).to eq(Time.now.at_end_of_hour + 1.hour)
    end 
  end


end
