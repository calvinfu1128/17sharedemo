

// remove #_=_ from url
<script type="text/javascript">
    (function() {
      $(function() {
        if (window.location.hash && window.location.hash === '#_=_') {
          window.location.hash = '';
          return history.pushState('', document.title, window.location.pathname);
        }
      });
    }).call(this);
</script>
