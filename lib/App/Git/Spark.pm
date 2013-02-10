package App::Git::Spark;

# VERSION

# ABSTRACT: Review the latest changes to a git repository

=head1 SYNOPSIS

    ⚡ git spark --days 14 --scale 23 Stegosaurus
    Commits by Stegosaurus over the last 14 days
    total: 95   avg: 7   max: 23
    10 15 6 23 5 0 0 1 15 0 17 3 0 0
    ▄▅▂█▂▁▁▁▅▁▆▁▁▁

    ⚡ git spark --days 14 --scale 23 Triceratops
    Commits by Triceratops over the last 14 days
    total: 90   avg: 7   max: 22
    1 12 3 11 3 0 0 6 16 3 13 22 0 0
    ▁▄▁▄▁▁▁▂▅▁▄▇▁▁

    ⚡ git spark -h
    usage: git spark [-dhmoswy] [long options...] [AUTHOR]
            -o --hours      Commits from the last x hours
            -d --days       Commits from the last x days
            -w --weeks      Commits from the last x weeks
            -m --months     Commits from the last x months
            -y --years      Commits from the last x years
            -s --scale      Set the max value of the graph. Use this option to
                            compare this graph with other graphs.
            -h --help       Show this message

=head1 DESCRIPTION

Plot your git commit history on the commandline with sparklines.  This is a
mashup of git, L<spark|https://github.com/holman/spark>, and Perl.

You only need to bother with --scale option if you want to compare the output
from 2 different git-spark commands.  To better understand this option please
read this short L<blog post|http://blog.kablamo.org/git-spark-revisited/>.

=head1 INSTALLATION

First, download spark and put it somewhere in your $PATH. (TODO: Include spark
in this distro.)

Next, install git-spark with cpanm.
L<cpanm|https://metacpan.org/module/App::cpanminus> is the standard tool the
Perl community uses to download and install Perl libraries from the
L<CPAN|https://metacpan.org/>.  The following should get you up and running
quickly:

    curl -L http://cpanmin.us | perl - --sudo App::cpanminus
    cpanm App::Git::Spark

=cut
