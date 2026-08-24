document.addEventListener('keydown', function (e) {
  if (e.key === 'ArrowRight' || e.key === 'ArrowDown' || e.key === 'PageDown') {
    const next = document.querySelector('a[rel="next"]');
    if (next) { e.preventDefault(); next.click(); }
  }
  if (e.key === 'ArrowLeft' || e.key === 'ArrowUp' || e.key === 'PageUp') {
    const prev = document.querySelector('a[rel="prev"]');
    if (prev) { e.preventDefault(); prev.click(); }
  }
});
