<%inherit file="/src/include/common.lyi"/>
<%
	attributes['jazzTune']=True
%>
\header {
	default_header

	title="Have you met Miss Jones"
	composer="Richard Rogers"
	poet="Lorenz Hart"
	style="Jazz"
	piece="Med Swing"

	completion="0"
	uuid="fe106f6c-a26e-11df-abb3-0019d11e5a41"
}

<%doc>
	TODO:
	-add lyrics
	-change the name of the file this tune is in (it is not according to convention).
</%doc>

myChords=\chordmode {
	\startChords

	\startSong

	\mark "A"
	\startPart
	f1:maj7 | d:7.9- | g:m7 | c:7 | a:m7 | d:m7 | g:m7 | c:7 | \myEndLine
	\endPart

	\mark "A"
	\startPart
	f1:maj7 | d:7.9- | g:m7 | c:7 | a:m7 | d:m7 | c:m7 | f:7 | \myEndLine
	\endPart

	\mark "B"
	\startPart
	bes1:maj7 | aes2:m7 des:7 | ges1:maj7 | e2:m7 a:7 |
	d1:maj7 | aes2:m7 des:7 | ges1:maj7 | g2:m7 c:7 | \myEndLine
	\endPart

	\mark "A"
	\startPart
	f1:maj7 | d:7.9- | g:m7 | c:7 | a2:m7 d:7 | g:m7 c:7 | f1:maj7 | g2:m7 c:7 | \myEndLine
	\endPart

	\endSong

	\endChords
}

myVoice=\relative a' {
	\time 4/4
	\key f \major

	\repeat "unfold" 2 {
	a4 d, c d | c2. r4 | d e f g | a bes c2 | d4 g, f g | f2. a4 | }
	\alternative { { bes1~ | bes2. r4 |} {c1~ | c4 d d d | } }
	c4 bes f g | aes aes aes aes | aes ges des ees | e! e e e | e d fis a |
	des2 des | bes1~ | bes2. r4 |
	a4 d, c d | c2. r4 | d e f g | a bes c d | e1~ | e4 d a g | f1 | r |
}

include(src/include/harmony_tune.lyi)