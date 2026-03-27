const API_URL = import.meta.env.VITE_API_URL;

export const checkHealth = async () => {
  const res = await fetch(`${API_URL}/health`);
  return res.json();
};