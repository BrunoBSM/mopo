import gym
import numpy as np


class ACPulse(gym.Env):
    def __init__(self, env_config):
        self.action_space = gym.spaces.Discrete(2)
        self.action_space.shape = (1,)
        self.observation_space = gym.spaces.Box(
            -np.inf, np.inf, shape=(env_config["obs_shape"],), dtype=np.float32
        )