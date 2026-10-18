package a4;

import androidx.appcompat.widget.e0;
import m5.p;
import m5.w;

/* JADX INFO: compiled from: MetadataUtil.java */
/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String[] f288a = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Afro-Punk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop", "Abstract", "Art Rock", "Baroque", "Bhangra", "Big beat", "Breakbeat", "Chillout", "Downtempo", "Dub", "EBM", "Eclectic", "Electro", "Electroclash", "Emo", "Experimental", "Garage", "Global", "IDM", "Illbient", "Industro-Goth", "Jam Band", "Krautrock", "Leftfield", "Lounge", "Math Rock", "New Romantic", "Nu-Breakz", "Post-Punk", "Post-Rock", "Psytrance", "Shoegaze", "Space Rock", "Trop Rock", "World Music", "Neoclassical", "Audiobook", "Audio theatre", "Neue Deutsche Welle", "Podcast", "Indie-Rock", "G-Funk", "Dubstep", "Garage Rock", "Psybient"};

    public static k4.e a(int i10, w wVar) {
        int iE = wVar.e();
        if (wVar.e() == 1684108385) {
            wVar.E(8);
            String strO = wVar.o(iE - 16);
            return new k4.e("und", strO, strO);
        }
        StringBuilder sbC = a0.b.c("Failed to parse comment attribute: ");
        sbC.append(a.a(i10));
        p.g("MetadataUtil", sbC.toString());
        return null;
    }

    public static k4.a b(w wVar) {
        String str;
        int iE = wVar.e();
        if (wVar.e() != 1684108385) {
            p.g("MetadataUtil", "Failed to parse cover art attribute");
            return null;
        }
        int iE2 = wVar.e() & 16777215;
        if (iE2 == 13) {
            str = "image/jpeg";
        } else {
            str = iE2 == 14 ? "image/png" : null;
        }
        if (str == null) {
            da.c.b("Unrecognized cover art flags: ", iE2, "MetadataUtil");
            return null;
        }
        wVar.E(4);
        int i10 = iE - 16;
        byte[] bArr = new byte[i10];
        wVar.d(bArr, 0, i10);
        return new k4.a(str, null, 3, bArr);
    }

    public static k4.l c(int i10, String str, w wVar) {
        int iE = wVar.e();
        if (wVar.e() == 1684108385 && iE >= 22) {
            wVar.E(10);
            int iY = wVar.y();
            if (iY > 0) {
                String strD = e0.d("", iY);
                int iY2 = wVar.y();
                if (iY2 > 0) {
                    strD = strD + "/" + iY2;
                }
                return new k4.l(str, null, strD);
            }
        }
        StringBuilder sbC = a0.b.c("Failed to parse index/count attribute: ");
        sbC.append(a.a(i10));
        p.g("MetadataUtil", sbC.toString());
        return null;
    }

    public static k4.l d(int i10, String str, w wVar) {
        int iE = wVar.e();
        if (wVar.e() == 1684108385) {
            wVar.E(8);
            return new k4.l(str, null, wVar.o(iE - 16));
        }
        StringBuilder sbC = a0.b.c("Failed to parse text attribute: ");
        sbC.append(a.a(i10));
        p.g("MetadataUtil", sbC.toString());
        return null;
    }

    public static k4.h e(int i10, String str, w wVar, boolean z10, boolean z11) {
        int iF = f(wVar);
        if (z11) {
            iF = Math.min(1, iF);
        }
        if (iF >= 0) {
            return z10 ? new k4.l(str, null, Integer.toString(iF)) : new k4.e("und", str, Integer.toString(iF));
        }
        StringBuilder sbC = a0.b.c("Failed to parse uint8 attribute: ");
        sbC.append(a.a(i10));
        p.g("MetadataUtil", sbC.toString());
        return null;
    }

    public static int f(w wVar) {
        wVar.E(4);
        if (wVar.e() == 1684108385) {
            wVar.E(8);
            return wVar.t();
        }
        p.g("MetadataUtil", "Failed to parse uint8 attribute value");
        return -1;
    }
}
