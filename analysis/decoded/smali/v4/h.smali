.class public final Lv4/h;
.super Ljava/lang/Object;
.source "HlsPlaylistParser.java"

# interfaces
.implements Ll5/f0$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv4/h$b;,
        Lv4/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll5/f0$a<",
        "Lv4/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final A:Ljava/util/regex/Pattern;

.field public static final B:Ljava/util/regex/Pattern;

.field public static final C:Ljava/util/regex/Pattern;

.field public static final D:Ljava/util/regex/Pattern;

.field public static final E:Ljava/util/regex/Pattern;

.field public static final F:Ljava/util/regex/Pattern;

.field public static final G:Ljava/util/regex/Pattern;

.field public static final H:Ljava/util/regex/Pattern;

.field public static final I:Ljava/util/regex/Pattern;

.field public static final J:Ljava/util/regex/Pattern;

.field public static final K:Ljava/util/regex/Pattern;

.field public static final L:Ljava/util/regex/Pattern;

.field public static final M:Ljava/util/regex/Pattern;

.field public static final N:Ljava/util/regex/Pattern;

.field public static final O:Ljava/util/regex/Pattern;

.field public static final P:Ljava/util/regex/Pattern;

.field public static final Q:Ljava/util/regex/Pattern;

.field public static final R:Ljava/util/regex/Pattern;

.field public static final S:Ljava/util/regex/Pattern;

.field public static final T:Ljava/util/regex/Pattern;

.field public static final U:Ljava/util/regex/Pattern;

.field public static final V:Ljava/util/regex/Pattern;

.field public static final W:Ljava/util/regex/Pattern;

.field public static final X:Ljava/util/regex/Pattern;

.field public static final Y:Ljava/util/regex/Pattern;

.field public static final Z:Ljava/util/regex/Pattern;

.field public static final a0:Ljava/util/regex/Pattern;

.field public static final b0:Ljava/util/regex/Pattern;

.field public static final c:Ljava/util/regex/Pattern;

.field public static final d:Ljava/util/regex/Pattern;

.field public static final e:Ljava/util/regex/Pattern;

.field public static final f:Ljava/util/regex/Pattern;

.field public static final g:Ljava/util/regex/Pattern;

.field public static final h:Ljava/util/regex/Pattern;

.field public static final i:Ljava/util/regex/Pattern;

.field public static final j:Ljava/util/regex/Pattern;

.field public static final k:Ljava/util/regex/Pattern;

.field public static final l:Ljava/util/regex/Pattern;

.field public static final m:Ljava/util/regex/Pattern;

.field public static final n:Ljava/util/regex/Pattern;

.field public static final o:Ljava/util/regex/Pattern;

.field public static final p:Ljava/util/regex/Pattern;

.field public static final q:Ljava/util/regex/Pattern;

.field public static final r:Ljava/util/regex/Pattern;

.field public static final s:Ljava/util/regex/Pattern;

.field public static final t:Ljava/util/regex/Pattern;

.field public static final u:Ljava/util/regex/Pattern;

.field public static final v:Ljava/util/regex/Pattern;

.field public static final w:Ljava/util/regex/Pattern;

.field public static final x:Ljava/util/regex/Pattern;

.field public static final y:Ljava/util/regex/Pattern;

.field public static final z:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Lv4/f;

.field public final b:Lv4/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "AVERAGE-BANDWIDTH=(\\d+)\\b"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->c:Ljava/util/regex/Pattern;

    const-string v0, "VIDEO=\"(.+?)\""

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->d:Ljava/util/regex/Pattern;

    const-string v0, "AUDIO=\"(.+?)\""

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->e:Ljava/util/regex/Pattern;

    const-string v0, "SUBTITLES=\"(.+?)\""

    .line 4
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->f:Ljava/util/regex/Pattern;

    const-string v0, "CLOSED-CAPTIONS=\"(.+?)\""

    .line 5
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->g:Ljava/util/regex/Pattern;

    const-string v0, "[^-]BANDWIDTH=(\\d+)\\b"

    .line 6
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->h:Ljava/util/regex/Pattern;

    const-string v0, "CHANNELS=\"(.+?)\""

    .line 7
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->i:Ljava/util/regex/Pattern;

    const-string v0, "CODECS=\"(.+?)\""

    .line 8
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->j:Ljava/util/regex/Pattern;

    const-string v0, "RESOLUTION=(\\d+x\\d+)"

    .line 9
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->k:Ljava/util/regex/Pattern;

    const-string v0, "FRAME-RATE=([\\d\\.]+)\\b"

    .line 10
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->l:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-TARGETDURATION:(\\d+)\\b"

    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->m:Ljava/util/regex/Pattern;

    const-string v0, "DURATION=([\\d\\.]+)\\b"

    .line 12
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->n:Ljava/util/regex/Pattern;

    const-string v0, "PART-TARGET=([\\d\\.]+)\\b"

    .line 13
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->o:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-VERSION:(\\d+)\\b"

    .line 14
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->p:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-PLAYLIST-TYPE:(.+)\\b"

    .line 15
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->q:Ljava/util/regex/Pattern;

    const-string v0, "CAN-SKIP-UNTIL=([\\d\\.]+)\\b"

    .line 16
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->r:Ljava/util/regex/Pattern;

    const-string v0, "CAN-SKIP-DATERANGES"

    .line 17
    invoke-static {v0}, Lv4/h;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->s:Ljava/util/regex/Pattern;

    const-string v0, "SKIPPED-SEGMENTS=(\\d+)\\b"

    .line 18
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->t:Ljava/util/regex/Pattern;

    const-string v0, "[:|,]HOLD-BACK=([\\d\\.]+)\\b"

    .line 19
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->u:Ljava/util/regex/Pattern;

    const-string v0, "PART-HOLD-BACK=([\\d\\.]+)\\b"

    .line 20
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->v:Ljava/util/regex/Pattern;

    const-string v0, "CAN-BLOCK-RELOAD"

    .line 21
    invoke-static {v0}, Lv4/h;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->w:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b"

    .line 22
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->x:Ljava/util/regex/Pattern;

    const-string v0, "#EXTINF:([\\d\\.]+)\\b"

    .line 23
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->y:Ljava/util/regex/Pattern;

    const-string v0, "#EXTINF:[\\d\\.]+\\b,(.+)"

    .line 24
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->z:Ljava/util/regex/Pattern;

    const-string v0, "LAST-MSN=(\\d+)\\b"

    .line 25
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->A:Ljava/util/regex/Pattern;

    const-string v0, "LAST-PART=(\\d+)\\b"

    .line 26
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->B:Ljava/util/regex/Pattern;

    const-string v0, "TIME-OFFSET=(-?[\\d\\.]+)\\b"

    .line 27
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->C:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b"

    .line 28
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->D:Ljava/util/regex/Pattern;

    const-string v0, "BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\""

    .line 29
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->E:Ljava/util/regex/Pattern;

    const-string v0, "BYTERANGE-START=(\\d+)\\b"

    .line 30
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->F:Ljava/util/regex/Pattern;

    const-string v0, "BYTERANGE-LENGTH=(\\d+)\\b"

    .line 31
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->G:Ljava/util/regex/Pattern;

    const-string v0, "METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(?:,|$)"

    .line 32
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->H:Ljava/util/regex/Pattern;

    const-string v0, "KEYFORMAT=\"(.+?)\""

    .line 33
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->I:Ljava/util/regex/Pattern;

    const-string v0, "KEYFORMATVERSIONS=\"(.+?)\""

    .line 34
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->J:Ljava/util/regex/Pattern;

    const-string v0, "URI=\"(.+?)\""

    .line 35
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->K:Ljava/util/regex/Pattern;

    const-string v0, "IV=([^,.*]+)"

    .line 36
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->L:Ljava/util/regex/Pattern;

    const-string v0, "TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)"

    .line 37
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->M:Ljava/util/regex/Pattern;

    const-string v0, "TYPE=(PART|MAP)"

    .line 38
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->N:Ljava/util/regex/Pattern;

    const-string v0, "LANGUAGE=\"(.+?)\""

    .line 39
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->O:Ljava/util/regex/Pattern;

    const-string v0, "NAME=\"(.+?)\""

    .line 40
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->P:Ljava/util/regex/Pattern;

    const-string v0, "GROUP-ID=\"(.+?)\""

    .line 41
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->Q:Ljava/util/regex/Pattern;

    const-string v0, "CHARACTERISTICS=\"(.+?)\""

    .line 42
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->R:Ljava/util/regex/Pattern;

    const-string v0, "INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\""

    .line 43
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->S:Ljava/util/regex/Pattern;

    const-string v0, "AUTOSELECT"

    .line 44
    invoke-static {v0}, Lv4/h;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->T:Ljava/util/regex/Pattern;

    const-string v0, "DEFAULT"

    .line 45
    invoke-static {v0}, Lv4/h;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->U:Ljava/util/regex/Pattern;

    const-string v0, "FORCED"

    .line 46
    invoke-static {v0}, Lv4/h;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->V:Ljava/util/regex/Pattern;

    const-string v0, "INDEPENDENT"

    .line 47
    invoke-static {v0}, Lv4/h;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->W:Ljava/util/regex/Pattern;

    const-string v0, "GAP"

    .line 48
    invoke-static {v0}, Lv4/h;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->X:Ljava/util/regex/Pattern;

    const-string v0, "PRECISE"

    .line 49
    invoke-static {v0}, Lv4/h;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->Y:Ljava/util/regex/Pattern;

    const-string v0, "VALUE=\"(.+?)\""

    .line 50
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->Z:Ljava/util/regex/Pattern;

    const-string v0, "IMPORT=\"(.+?)\""

    .line 51
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->a0:Ljava/util/regex/Pattern;

    const-string v0, "\\{\\$([a-zA-Z0-9\\-_]+)\\}"

    .line 52
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lv4/h;->b0:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lv4/f;->n:Lv4/f;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Lv4/h;->a:Lv4/f;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lv4/h;->b:Lv4/e;

    return-void
.end method

.method public constructor <init>(Lv4/f;Lv4/e;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lv4/h;->a:Lv4/f;

    .line 7
    iput-object p2, p0, Lv4/h;->b:Lv4/e;

    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 4

    const-string v0, "=("

    const-string v1, "NO"

    const-string v2, "|"

    const-string v3, "YES"

    .line 1
    invoke-static {p0, v0, v1, v2, v3}, Lk1/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;[Lr3/d$b;)Lr3/d;
    .locals 7

    .line 1
    array-length v0, p1

    new-array v0, v0, [Lr3/d$b;

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 3
    aget-object v2, p1, v1

    const/4 v3, 0x0

    .line 4
    new-instance v4, Lr3/d$b;

    iget-object v5, v2, Lr3/d$b;->i:Ljava/util/UUID;

    iget-object v6, v2, Lr3/d$b;->j:Ljava/lang/String;

    iget-object v2, v2, Lr3/d$b;->k:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v2, v3}, Lr3/d$b;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 5
    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lr3/d;

    const/4 v1, 0x1

    .line 7
    invoke-direct {p1, p0, v1, v0}, Lr3/d;-><init>(Ljava/lang/String;Z[Lr3/d$b;)V

    return-object p1
.end method

.method public static d(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p3, :cond_1

    return-object p3

    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;Ljava/util/regex/Pattern;)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/i1;
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lv4/h;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lr3/d$b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lr3/d$b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/i1;
        }
    .end annotation

    .line 1
    sget-object v0, Lv4/h;->J:Ljava/util/regex/Pattern;

    const-string v1, "1"

    .line 2
    invoke-static {p0, v0, v1, p2}, Lv4/h;->o(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    .line 3
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x2c

    const-string v5, "video/mp4"

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    .line 4
    sget-object p1, Lv4/h;->K:Ljava/util/regex/Pattern;

    invoke-static {p0, p1, p2}, Lv4/h;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 5
    new-instance p1, Lr3/d$b;

    sget-object p2, Ln3/i;->d:Ljava/util/UUID;

    .line 6
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 7
    invoke-direct {p1, p2, v6, v5, p0}, Lr3/d$b;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object p1

    :cond_0
    const-string v2, "com.widevine"

    .line 8
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    new-instance p1, Lr3/d$b;

    sget-object p2, Ln3/i;->d:Ljava/util/UUID;

    invoke-static {p0}, Lm5/g0;->F(Ljava/lang/String;)[B

    move-result-object p0

    const-string v0, "hls"

    .line 10
    invoke-direct {p1, p2, v6, v0, p0}, Lr3/d$b;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object p1

    :cond_1
    const-string v2, "com.microsoft.playready"

    .line 11
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    sget-object p1, Lv4/h;->K:Ljava/util/regex/Pattern;

    invoke-static {p0, p1, p2}, Lv4/h;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 13
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 14
    sget-object p1, Ln3/i;->e:Ljava/util/UUID;

    .line 15
    invoke-static {p1, v6, p0}, La4/i;->a(Ljava/util/UUID;[Ljava/util/UUID;[B)[B

    move-result-object p0

    .line 16
    new-instance p2, Lr3/d$b;

    .line 17
    invoke-direct {p2, p1, v6, v5, p0}, Lr3/d$b;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object p2

    :cond_2
    return-object v6
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "SAMPLE-AES-CENC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SAMPLE-AES-CTR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "cbcs"

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "cenc"

    :goto_1
    return-object p0
.end method

.method public static h(Ljava/lang/String;Ljava/util/regex/Pattern;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/i1;
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lv4/h;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i(Lv4/f;Lv4/e;Lv4/h$b;Ljava/lang/String;)Lv4/e;
    .locals 94
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lv4/g;->c:Z

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 4
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v6, Lv4/e$e;

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v19, 0x0

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v24, 0x0

    move-object/from16 v16, v6

    invoke-direct/range {v16 .. v24}, Lv4/e$e;-><init>(JZJJZ)V

    .line 9
    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    const/4 v13, 0x0

    const-string v10, ""

    const-wide/16 v18, 0x0

    move-object/from16 v79, p1

    move-object/from16 v78, v0

    move/from16 v34, v1

    move-object/from16 v55, v6

    move-object/from16 v40, v10

    move-object/from16 v36, v13

    move-object/from16 v39, v36

    move-object/from16 v74, v39

    move-object/from16 v75, v74

    move-object/from16 v80, v75

    move-object/from16 v87, v80

    move-wide/from16 v23, v18

    move-wide/from16 v27, v23

    move-wide/from16 v37, v27

    move-wide/from16 v49, v37

    move-wide/from16 v82, v49

    move-wide/from16 v84, v82

    move-wide/from16 v88, v84

    move-wide/from16 v90, v88

    const/4 v1, 0x0

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v29, 0x1

    const-wide v30, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v32, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v35, 0x0

    const/16 v53, 0x0

    const-wide/16 v76, -0x1

    const/16 v81, 0x0

    const/16 v86, 0x0

    move-object v6, v4

    move-object/from16 v4, v87

    .line 10
    :cond_0
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lv4/h$b;->a()Z

    move-result v41

    const/4 v11, -0x1

    if-eqz v41, :cond_46

    .line 11
    invoke-virtual/range {p2 .. p2}, Lv4/h$b;->b()Ljava/lang/String;

    move-result-object v12

    const-string v9, "#EXT"

    .line 12
    invoke-virtual {v12, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 13
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v9, "#EXT-X-PLAYLIST-TYPE"

    .line 14
    invoke-virtual {v12, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 15
    sget-object v9, Lv4/h;->q:Ljava/util/regex/Pattern;

    invoke-static {v12, v9, v2}, Lv4/h;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "VOD"

    .line 16
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const-string v11, "EVENT"

    .line 17
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_3
    const-string v9, "#EXT-X-I-FRAMES-ONLY"

    .line 18
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v86, 0x1

    goto :goto_0

    :cond_4
    const-string v9, "#EXT-X-START"

    .line 19
    invoke-virtual {v12, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    const-wide v41, 0x412e848000000000L    # 1000000.0

    if-eqz v9, :cond_5

    .line 20
    sget-object v9, Lv4/h;->C:Ljava/util/regex/Pattern;

    invoke-static {v12, v9}, Lv4/h;->e(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v20

    move-object/from16 v92, v15

    mul-double v14, v20, v41

    double-to-long v14, v14

    .line 21
    sget-object v11, Lv4/h;->Y:Ljava/util/regex/Pattern;

    .line 22
    invoke-static {v12, v11}, Lv4/h;->k(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v22

    move-wide/from16 v20, v14

    move-object/from16 v15, v92

    goto :goto_0

    :cond_5
    move-object/from16 v92, v15

    const-string v14, "#EXT-X-SERVER-CONTROL"

    .line 23
    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 24
    sget-object v11, Lv4/h;->r:Ljava/util/regex/Pattern;

    .line 25
    invoke-static {v12, v11}, Lv4/h;->l(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v14

    const-wide/high16 v43, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v11, v14, v43

    if-nez v11, :cond_6

    const-wide v55, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_1

    :cond_6
    mul-double v14, v14, v41

    double-to-long v14, v14

    move-wide/from16 v55, v14

    .line 26
    :goto_1
    sget-object v11, Lv4/h;->s:Ljava/util/regex/Pattern;

    .line 27
    invoke-static {v12, v11}, Lv4/h;->k(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v57

    .line 28
    sget-object v11, Lv4/h;->u:Ljava/util/regex/Pattern;

    .line 29
    invoke-static {v12, v11}, Lv4/h;->l(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v14

    cmpl-double v11, v14, v43

    if-nez v11, :cond_7

    const-wide v58, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2

    :cond_7
    mul-double v14, v14, v41

    double-to-long v14, v14

    move-wide/from16 v58, v14

    .line 30
    :goto_2
    sget-object v11, Lv4/h;->v:Ljava/util/regex/Pattern;

    invoke-static {v12, v11}, Lv4/h;->l(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v14

    cmpl-double v11, v14, v43

    if-nez v11, :cond_8

    const-wide v60, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_3

    :cond_8
    mul-double v14, v14, v41

    double-to-long v14, v14

    move-wide/from16 v60, v14

    .line 31
    :goto_3
    sget-object v11, Lv4/h;->w:Ljava/util/regex/Pattern;

    .line 32
    invoke-static {v12, v11}, Lv4/h;->k(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v62

    .line 33
    new-instance v11, Lv4/e$e;

    move-object/from16 v54, v11

    invoke-direct/range {v54 .. v62}, Lv4/e$e;-><init>(JZJJZ)V

    move-object/from16 v54, v6

    move-object/from16 v55, v11

    goto :goto_4

    :cond_9
    const-string v14, "#EXT-X-PART-INF"

    .line 34
    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 35
    sget-object v11, Lv4/h;->o:Ljava/util/regex/Pattern;

    invoke-static {v12, v11}, Lv4/h;->e(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v11

    mul-double v11, v11, v41

    double-to-long v11, v11

    move-object/from16 v54, v6

    move-wide/from16 v32, v11

    :goto_4
    move-object/from16 v47, v75

    move-object/from16 v6, v78

    move-object/from16 v0, v92

    move-object/from16 v78, v10

    move-object/from16 v75, v74

    goto/16 :goto_7

    :cond_a
    const-string v14, "#EXT-X-MAP"

    .line 36
    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    const-string v15, "@"

    if-eqz v14, :cond_10

    .line 37
    sget-object v14, Lv4/h;->K:Ljava/util/regex/Pattern;

    invoke-static {v12, v14, v2}, Lv4/h;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v42

    .line 38
    sget-object v14, Lv4/h;->E:Ljava/util/regex/Pattern;

    .line 39
    invoke-static {v12, v14, v13, v2}, Lv4/h;->o(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_b

    .line 40
    sget v14, Lm5/g0;->a:I

    .line 41
    invoke-virtual {v12, v15, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v11

    const/4 v9, 0x0

    .line 42
    aget-object v12, v11, v9

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v76

    .line 43
    array-length v12, v11

    const/4 v14, 0x1

    if-le v12, v14, :cond_b

    .line 44
    aget-object v11, v11, v14

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v37

    :cond_b
    const-wide/16 v11, -0x1

    cmp-long v14, v76, v11

    if-nez v14, :cond_c

    move-wide/from16 v37, v18

    :cond_c
    move-object/from16 v11, v74

    move-object/from16 v12, v75

    if-eqz v11, :cond_e

    if-eqz v12, :cond_d

    goto :goto_5

    :cond_d
    const-string v0, "The encryption IV attribute must be present when an initialization segment is encrypted with METHOD=AES-128."

    .line 45
    invoke-static {v0, v13}, Ln3/i1;->b(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v0

    throw v0

    .line 46
    :cond_e
    :goto_5
    new-instance v87, Lv4/e$c;

    move-object/from16 v41, v87

    move-wide/from16 v43, v37

    move-wide/from16 v45, v76

    move-object/from16 v47, v11

    move-object/from16 v48, v12

    invoke-direct/range {v41 .. v48}, Lv4/e$c;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    if-eqz v14, :cond_f

    add-long v37, v37, v76

    :cond_f
    move-object/from16 v74, v11

    move-object/from16 v75, v12

    move-object/from16 v15, v92

    const-wide/16 v76, -0x1

    goto/16 :goto_0

    :cond_10
    move-object/from16 v14, v74

    move-object/from16 v9, v75

    const-string v11, "#EXT-X-TARGETDURATION"

    .line 47
    invoke-virtual {v12, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    move-object/from16 v75, v14

    const-wide/32 v13, 0xf4240

    if-eqz v11, :cond_11

    .line 48
    sget-object v11, Lv4/h;->m:Ljava/util/regex/Pattern;

    invoke-static {v12, v11}, Lv4/h;->h(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v11

    int-to-long v11, v11

    mul-long v30, v11, v13

    goto/16 :goto_9

    :cond_11
    const-string v11, "#EXT-X-MEDIA-SEQUENCE"

    .line 49
    invoke-virtual {v12, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 50
    sget-object v11, Lv4/h;->x:Ljava/util/regex/Pattern;

    .line 51
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v13

    invoke-static {v12, v11, v13}, Lv4/h;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v27

    move-object/from16 v54, v6

    move-object/from16 v47, v9

    move-wide/from16 v84, v27

    :goto_6
    move-object/from16 v6, v78

    move-object/from16 v0, v92

    move-object/from16 v78, v10

    :goto_7
    move-object/from16 v93, v79

    move-object/from16 v79, v7

    move-object/from16 v7, v93

    goto/16 :goto_e

    :cond_12
    const-string v11, "#EXT-X-VERSION"

    .line 52
    invoke-virtual {v12, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 53
    sget-object v11, Lv4/h;->p:Ljava/util/regex/Pattern;

    invoke-static {v12, v11}, Lv4/h;->h(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v29

    goto :goto_9

    :cond_13
    const-string v11, "#EXT-X-DEFINE"

    .line 54
    invoke-virtual {v12, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 55
    sget-object v11, Lv4/h;->a0:Ljava/util/regex/Pattern;

    const/4 v13, 0x0

    .line 56
    invoke-static {v12, v11, v13, v2}, Lv4/h;->o(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_14

    move-object/from16 v13, v78

    .line 57
    iget-object v12, v13, Lv4/f;->l:Ljava/util/Map;

    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    if-eqz v12, :cond_15

    .line 58
    invoke-virtual {v2, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 59
    :cond_14
    sget-object v11, Lv4/h;->P:Ljava/util/regex/Pattern;

    .line 60
    invoke-static {v12, v11, v2}, Lv4/h;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    sget-object v13, Lv4/h;->Z:Ljava/util/regex/Pattern;

    .line 61
    invoke-static {v12, v13, v2}, Lv4/h;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    .line 62
    invoke-virtual {v2, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    :goto_8
    move-object/from16 v14, p3

    move-object/from16 v54, v6

    move-object/from16 v79, v7

    move-object/from16 v78, v10

    move-object/from16 v13, v80

    move-object/from16 v0, v92

    goto/16 :goto_13

    :cond_16
    const-string v11, "#EXTINF"

    .line 63
    invoke-virtual {v12, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 64
    sget-object v11, Lv4/h;->y:Ljava/util/regex/Pattern;

    .line 65
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v15

    invoke-static {v12, v11, v15}, Lv4/h;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    .line 66
    new-instance v15, Ljava/math/BigDecimal;

    invoke-direct {v15, v11}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 67
    new-instance v11, Ljava/math/BigDecimal;

    invoke-direct {v11, v13, v14}, Ljava/math/BigDecimal;-><init>(J)V

    invoke-virtual {v15, v11}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v88

    .line 68
    sget-object v11, Lv4/h;->z:Ljava/util/regex/Pattern;

    invoke-static {v12, v11, v10, v2}, Lv4/h;->o(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v40

    :goto_9
    move-object/from16 v54, v6

    move-object/from16 v47, v9

    goto/16 :goto_6

    :cond_17
    const-string v11, "#EXT-X-SKIP"

    .line 69
    invoke-virtual {v12, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_20

    .line 70
    sget-object v11, Lv4/h;->t:Ljava/util/regex/Pattern;

    invoke-static {v12, v11}, Lv4/h;->h(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v11

    move-object/from16 v12, v79

    if-eqz v12, :cond_18

    .line 71
    invoke-virtual/range {v92 .. v92}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_18

    const/4 v15, 0x1

    goto :goto_a

    :cond_18
    const/4 v15, 0x0

    :goto_a
    invoke-static {v15}, Lm5/a;->e(Z)V

    .line 72
    sget v15, Lm5/g0;->a:I

    iget-wide v13, v12, Lv4/e;->k:J

    sub-long v13, v27, v13

    long-to-int v13, v13

    add-int/2addr v11, v13

    if-ltz v13, :cond_1f

    .line 73
    iget-object v14, v12, Lv4/e;->r:Lu6/v;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-gt v11, v14, :cond_1f

    :goto_b
    if-ge v13, v11, :cond_1e

    .line 74
    iget-object v14, v12, Lv4/e;->r:Lu6/v;

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lv4/e$c;

    move-object v15, v9

    move-object/from16 v78, v10

    .line 75
    iget-wide v9, v12, Lv4/e;->k:J

    cmp-long v9, v27, v9

    if-eqz v9, :cond_1a

    .line 76
    iget v9, v12, Lv4/e;->j:I

    sub-int v9, v9, v26

    iget v10, v14, Lv4/e$d;->k:I

    add-int/2addr v9, v10

    .line 77
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-wide/from16 v41, v82

    const/4 v12, 0x0

    .line 78
    :goto_c
    iget-object v0, v14, Lv4/e$c;->t:Lu6/v;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v12, v0, :cond_19

    .line 79
    iget-object v0, v14, Lv4/e$c;->t:Lu6/v;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv4/e$a;

    move/from16 v44, v11

    .line 80
    new-instance v11, Lv4/e$a;

    move-object/from16 v56, v11

    move-object/from16 v47, v15

    iget-object v15, v0, Lv4/e$d;->h:Ljava/lang/String;

    move-object/from16 v57, v15

    iget-object v15, v0, Lv4/e$d;->i:Lv4/e$c;

    move-object/from16 v58, v15

    move-object/from16 v54, v6

    move-object/from16 v79, v7

    iget-wide v6, v0, Lv4/e$d;->j:J

    move-wide/from16 v59, v6

    iget-object v6, v0, Lv4/e$d;->m:Lr3/d;

    move-object/from16 v64, v6

    iget-object v6, v0, Lv4/e$d;->n:Ljava/lang/String;

    move-object/from16 v65, v6

    iget-object v6, v0, Lv4/e$d;->o:Ljava/lang/String;

    move-object/from16 v66, v6

    iget-wide v6, v0, Lv4/e$d;->p:J

    move-wide/from16 v67, v6

    iget-wide v6, v0, Lv4/e$d;->q:J

    move-wide/from16 v69, v6

    iget-boolean v6, v0, Lv4/e$d;->r:Z

    move/from16 v71, v6

    iget-boolean v6, v0, Lv4/e$a;->s:Z

    move/from16 v72, v6

    iget-boolean v6, v0, Lv4/e$a;->t:Z

    move/from16 v73, v6

    move/from16 v61, v9

    move-wide/from16 v62, v41

    invoke-direct/range {v56 .. v73}, Lv4/e$a;-><init>(Ljava/lang/String;Lv4/e$c;JIJLr3/d;Ljava/lang/String;Ljava/lang/String;JJZZZ)V

    .line 81
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-wide v6, v0, Lv4/e$d;->j:J

    add-long v41, v41, v6

    add-int/lit8 v12, v12, 0x1

    move/from16 v11, v44

    move-object/from16 v15, v47

    move-object/from16 v6, v54

    move-object/from16 v7, v79

    goto :goto_c

    :cond_19
    move-object/from16 v54, v6

    move-object/from16 v79, v7

    move/from16 v44, v11

    move-object/from16 v47, v15

    .line 83
    new-instance v0, Lv4/e$c;

    move-object/from16 v56, v0

    iget-object v6, v14, Lv4/e$d;->h:Ljava/lang/String;

    move-object/from16 v57, v6

    iget-object v6, v14, Lv4/e$d;->i:Lv4/e$c;

    move-object/from16 v58, v6

    iget-object v6, v14, Lv4/e$c;->s:Ljava/lang/String;

    move-object/from16 v59, v6

    iget-wide v6, v14, Lv4/e$d;->j:J

    move-wide/from16 v60, v6

    iget-object v6, v14, Lv4/e$d;->m:Lr3/d;

    move-object/from16 v65, v6

    iget-object v6, v14, Lv4/e$d;->n:Ljava/lang/String;

    move-object/from16 v66, v6

    iget-object v6, v14, Lv4/e$d;->o:Ljava/lang/String;

    move-object/from16 v67, v6

    iget-wide v6, v14, Lv4/e$d;->p:J

    move-wide/from16 v68, v6

    iget-wide v6, v14, Lv4/e$d;->q:J

    move-wide/from16 v70, v6

    iget-boolean v6, v14, Lv4/e$d;->r:Z

    move/from16 v72, v6

    move/from16 v62, v9

    move-wide/from16 v63, v82

    move-object/from16 v73, v10

    invoke-direct/range {v56 .. v73}, Lv4/e$c;-><init>(Ljava/lang/String;Lv4/e$c;Ljava/lang/String;JIJLr3/d;Ljava/lang/String;Ljava/lang/String;JJZLjava/util/List;)V

    move-object v14, v0

    goto :goto_d

    :cond_1a
    move-object/from16 v54, v6

    move-object/from16 v79, v7

    move/from16 v44, v11

    move-object/from16 v47, v15

    :goto_d
    move-object/from16 v0, v92

    .line 84
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-wide v6, v14, Lv4/e$d;->j:J

    add-long v82, v82, v6

    .line 86
    iget-wide v6, v14, Lv4/e$d;->q:J

    const-wide/16 v9, -0x1

    cmp-long v11, v6, v9

    if-eqz v11, :cond_1b

    .line 87
    iget-wide v9, v14, Lv4/e$d;->p:J

    add-long v37, v9, v6

    .line 88
    :cond_1b
    iget v6, v14, Lv4/e$d;->k:I

    .line 89
    iget-object v7, v14, Lv4/e$d;->i:Lv4/e$c;

    .line 90
    iget-object v9, v14, Lv4/e$d;->m:Lr3/d;

    .line 91
    iget-object v10, v14, Lv4/e$d;->n:Ljava/lang/String;

    .line 92
    iget-object v11, v14, Lv4/e$d;->o:Ljava/lang/String;

    if-eqz v11, :cond_1c

    .line 93
    invoke-static/range {v84 .. v85}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1d

    .line 94
    :cond_1c
    iget-object v11, v14, Lv4/e$d;->o:Ljava/lang/String;

    move-object/from16 v47, v11

    :cond_1d
    const-wide/16 v11, 0x1

    add-long v84, v84, v11

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v12, p1

    move-object/from16 v92, v0

    move/from16 v81, v6

    move-object/from16 v87, v7

    move-object/from16 v39, v9

    move-object/from16 v75, v10

    move/from16 v11, v44

    move-object/from16 v9, v47

    move-object/from16 v6, v54

    move-object/from16 v10, v78

    move-object/from16 v7, v79

    move-wide/from16 v49, v82

    move-object/from16 v0, p0

    goto/16 :goto_b

    :cond_1e
    move-object/from16 v54, v6

    move-object/from16 v79, v7

    move-object/from16 v47, v9

    move-object/from16 v78, v10

    move-object/from16 v0, v92

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    :goto_e
    move-object v15, v0

    move-object/from16 v74, v75

    move-object/from16 v10, v78

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v78, v6

    move-object/from16 v75, v47

    move-object/from16 v6, v54

    move-object/from16 v93, v79

    move-object/from16 v79, v7

    move-object/from16 v7, v93

    goto/16 :goto_0

    .line 95
    :cond_1f
    new-instance v0, Lv4/h$a;

    invoke-direct {v0}, Lv4/h$a;-><init>()V

    throw v0

    :cond_20
    move-object/from16 v54, v6

    move-object/from16 v79, v7

    move-object/from16 v78, v10

    move-object/from16 v0, v92

    const-string v6, "#EXT-X-KEY"

    .line 96
    invoke-virtual {v12, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 97
    sget-object v6, Lv4/h;->H:Ljava/util/regex/Pattern;

    invoke-static {v12, v6, v2}, Lv4/h;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 98
    sget-object v7, Lv4/h;->I:Ljava/util/regex/Pattern;

    const-string v9, "identity"

    .line 99
    invoke-static {v12, v7, v9, v2}, Lv4/h;->o(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "NONE"

    .line 100
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_21

    .line 101
    invoke-virtual {v8}, Ljava/util/TreeMap;->clear()V

    const/4 v6, 0x0

    const/16 v39, 0x0

    const/16 v75, 0x0

    goto/16 :goto_12

    .line 102
    :cond_21
    sget-object v10, Lv4/h;->L:Ljava/util/regex/Pattern;

    const/4 v11, 0x0

    .line 103
    invoke-static {v12, v10, v11, v2}, Lv4/h;->o(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 104
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_22

    const-string v7, "AES-128"

    .line 105
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 106
    sget-object v6, Lv4/h;->K:Ljava/util/regex/Pattern;

    invoke-static {v12, v6, v2}, Lv4/h;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v75, v10

    goto/16 :goto_12

    :cond_22
    move-object/from16 v13, v80

    if-nez v13, :cond_23

    .line 107
    invoke-static {v6}, Lv4/h;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v80, v6

    goto :goto_f

    :cond_23
    move-object/from16 v80, v13

    .line 108
    :goto_f
    invoke-static {v12, v7, v2}, Lv4/h;->f(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lr3/d$b;

    move-result-object v6

    if-eqz v6, :cond_24

    .line 109
    invoke-virtual {v8, v7, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v39, 0x0

    :cond_24
    move-object/from16 v75, v10

    const/4 v6, 0x0

    goto/16 :goto_12

    :cond_25
    move-object/from16 v13, v80

    const-string v6, "#EXT-X-BYTERANGE"

    .line 110
    invoke-virtual {v12, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 111
    sget-object v6, Lv4/h;->D:Ljava/util/regex/Pattern;

    invoke-static {v12, v6, v2}, Lv4/h;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 112
    sget v7, Lm5/g0;->a:I

    const/4 v7, -0x1

    .line 113
    invoke-virtual {v6, v15, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 114
    aget-object v10, v6, v7

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v76

    .line 115
    array-length v10, v6

    const/4 v11, 0x1

    if-le v10, v11, :cond_29

    .line 116
    aget-object v6, v6, v11

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v37

    goto :goto_11

    :cond_26
    const/4 v11, 0x1

    const-string v6, "#EXT-X-DISCONTINUITY-SEQUENCE"

    .line 117
    invoke-virtual {v12, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/16 v10, 0x3a

    if-eqz v6, :cond_27

    .line 118
    invoke-virtual {v12, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/2addr v6, v11

    invoke-virtual {v12, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    move-object v15, v0

    move-object/from16 v80, v13

    move-object/from16 v6, v54

    move-object/from16 v74, v75

    move-object/from16 v10, v78

    move-object/from16 v7, v79

    const/4 v13, 0x0

    const/16 v25, 0x1

    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v78, v0

    move-object/from16 v79, p1

    move-object/from16 v75, v9

    goto/16 :goto_0

    :cond_27
    const-string v6, "#EXT-X-DISCONTINUITY"

    .line 119
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28

    add-int/lit8 v81, v81, 0x1

    goto :goto_11

    :cond_28
    const-string v6, "#EXT-X-PROGRAM-DATE-TIME"

    .line 120
    invoke-virtual {v12, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2b

    cmp-long v6, v23, v18

    if-nez v6, :cond_2a

    .line 121
    invoke-virtual {v12, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v10, 0x1

    add-int/2addr v6, v10

    invoke-virtual {v12, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lm5/g0;->O(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Lm5/g0;->L(J)J

    move-result-wide v10

    sub-long v23, v10, v82

    :cond_29
    :goto_11
    move-object/from16 v80, v13

    move-object/from16 v6, v75

    move-object/from16 v75, v9

    :goto_12
    move-object v15, v0

    move-object/from16 v74, v6

    move-object/from16 v6, v54

    move-object/from16 v10, v78

    move-object/from16 v7, v79

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v78, v0

    move-object/from16 v79, p1

    goto/16 :goto_0

    :cond_2a
    move-object/from16 v14, p3

    goto/16 :goto_13

    :cond_2b
    const-string v6, "#EXT-X-GAP"

    .line 122
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    move-object v15, v0

    move-object/from16 v80, v13

    move-object/from16 v6, v54

    move-object/from16 v74, v75

    move-object/from16 v10, v78

    move-object/from16 v7, v79

    const/4 v13, 0x0

    const/16 v53, 0x1

    goto :goto_10

    :cond_2c
    const-string v6, "#EXT-X-INDEPENDENT-SEGMENTS"

    .line 123
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d

    move-object v15, v0

    move-object/from16 v80, v13

    move-object/from16 v6, v54

    move-object/from16 v74, v75

    move-object/from16 v10, v78

    move-object/from16 v7, v79

    const/4 v13, 0x0

    const/16 v34, 0x1

    goto :goto_10

    :cond_2d
    const-string v6, "#EXT-X-ENDLIST"

    .line 124
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    move-object v15, v0

    move-object/from16 v80, v13

    move-object/from16 v6, v54

    move-object/from16 v74, v75

    move-object/from16 v10, v78

    move-object/from16 v7, v79

    const/4 v13, 0x0

    const/16 v35, 0x1

    goto/16 :goto_10

    :cond_2e
    const-string v6, "#EXT-X-RENDITION-REPORT"

    .line 125
    invoke-virtual {v12, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 126
    sget-object v6, Lv4/h;->A:Ljava/util/regex/Pattern;

    invoke-static {v12, v6}, Lv4/h;->n(Ljava/lang/String;Ljava/util/regex/Pattern;)J

    move-result-wide v10

    .line 127
    sget-object v6, Lv4/h;->B:Ljava/util/regex/Pattern;

    invoke-static {v12, v6}, Lv4/h;->m(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v6

    .line 128
    sget-object v14, Lv4/h;->K:Ljava/util/regex/Pattern;

    invoke-static {v12, v14, v2}, Lv4/h;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v14, p3

    .line 129
    invoke-static {v14, v12}, Lm5/e0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 130
    new-instance v15, Lv4/e$b;

    invoke-direct {v15, v12, v10, v11, v6}, Lv4/e$b;-><init>(Landroid/net/Uri;JI)V

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_2f
    move-object/from16 v14, p3

    const-string v6, "#EXT-X-PRELOAD-HINT"

    .line 131
    invoke-virtual {v12, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_37

    if-eqz v4, :cond_30

    goto :goto_13

    .line 132
    :cond_30
    sget-object v6, Lv4/h;->N:Ljava/util/regex/Pattern;

    invoke-static {v12, v6, v2}, Lv4/h;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    const-string v10, "PART"

    .line 133
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_31

    :goto_13
    move/from16 v80, v1

    move-object/from16 v56, v2

    move-object/from16 v57, v3

    move-object/from16 v14, v54

    move-object/from16 v6, v75

    move-object/from16 v75, v8

    move-wide/from16 v7, v84

    goto/16 :goto_1a

    .line 134
    :cond_31
    sget-object v6, Lv4/h;->K:Ljava/util/regex/Pattern;

    invoke-static {v12, v6, v2}, Lv4/h;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v57

    .line 135
    sget-object v6, Lv4/h;->F:Ljava/util/regex/Pattern;

    .line 136
    invoke-static {v12, v6}, Lv4/h;->n(Ljava/lang/String;Ljava/util/regex/Pattern;)J

    move-result-wide v10

    .line 137
    sget-object v6, Lv4/h;->G:Ljava/util/regex/Pattern;

    .line 138
    invoke-static {v12, v6}, Lv4/h;->n(Ljava/lang/String;Ljava/util/regex/Pattern;)J

    move-result-wide v69

    move-object/from16 v6, v75

    move-object/from16 v75, v8

    move-wide/from16 v7, v84

    .line 139
    invoke-static {v7, v8, v6, v9}, Lv4/h;->d(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v66

    if-nez v39, :cond_33

    .line 140
    invoke-virtual/range {v75 .. v75}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_33

    .line 141
    invoke-virtual/range {v75 .. v75}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v12

    const/4 v15, 0x0

    new-array v14, v15, [Lr3/d$b;

    invoke-interface {v12, v14}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lr3/d$b;

    .line 142
    new-instance v14, Lr3/d;

    const/4 v15, 0x1

    .line 143
    invoke-direct {v14, v13, v15, v12}, Lr3/d;-><init>(Ljava/lang/String;Z[Lr3/d$b;)V

    if-nez v36, :cond_32

    .line 144
    invoke-static {v13, v12}, Lv4/h;->c(Ljava/lang/String;[Lr3/d$b;)Lr3/d;

    move-result-object v12

    move-object/from16 v36, v12

    :cond_32
    move-object/from16 v39, v14

    :cond_33
    const-wide/16 v14, -0x1

    cmp-long v12, v10, v14

    if-eqz v12, :cond_34

    cmp-long v41, v69, v14

    if-eqz v41, :cond_36

    .line 145
    :cond_34
    new-instance v4, Lv4/e$a;

    const-wide/16 v59, 0x0

    if-eqz v12, :cond_35

    move-wide/from16 v67, v10

    goto :goto_14

    :cond_35
    move-wide/from16 v67, v18

    :goto_14
    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x1

    move-object/from16 v56, v4

    move-object/from16 v58, v87

    move/from16 v61, v81

    move-wide/from16 v62, v49

    move-object/from16 v64, v39

    move-object/from16 v65, v6

    .line 146
    invoke-direct/range {v56 .. v73}, Lv4/e$a;-><init>(Ljava/lang/String;Lv4/e$c;JIJLr3/d;Ljava/lang/String;Ljava/lang/String;JJZZZ)V

    :cond_36
    move/from16 v80, v1

    move-object/from16 v56, v2

    move-object/from16 v57, v3

    move-wide/from16 v84, v7

    move-object/from16 v14, v54

    goto/16 :goto_1b

    :cond_37
    move-object/from16 v6, v75

    move-object/from16 v75, v8

    move-wide/from16 v7, v84

    const-string v10, "#EXT-X-PART"

    .line 147
    invoke-virtual {v12, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3f

    .line 148
    invoke-static {v7, v8, v6, v9}, Lv4/h;->d(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v66

    .line 149
    sget-object v10, Lv4/h;->K:Ljava/util/regex/Pattern;

    invoke-static {v12, v10, v2}, Lv4/h;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v57

    .line 150
    sget-object v10, Lv4/h;->n:Ljava/util/regex/Pattern;

    .line 151
    invoke-static {v12, v10}, Lv4/h;->e(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v10

    mul-double v10, v10, v41

    double-to-long v10, v10

    .line 152
    sget-object v14, Lv4/h;->W:Ljava/util/regex/Pattern;

    .line 153
    invoke-static {v12, v14}, Lv4/h;->k(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v14

    if-eqz v34, :cond_38

    .line 154
    invoke-interface/range {v54 .. v54}, Ljava/util/List;->isEmpty()Z

    move-result v41

    if-eqz v41, :cond_38

    const/16 v41, 0x1

    goto :goto_15

    :cond_38
    const/16 v41, 0x0

    :goto_15
    or-int v72, v14, v41

    .line 155
    sget-object v14, Lv4/h;->X:Ljava/util/regex/Pattern;

    invoke-static {v12, v14}, Lv4/h;->k(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v71

    .line 156
    sget-object v14, Lv4/h;->E:Ljava/util/regex/Pattern;

    move/from16 v80, v1

    const/4 v1, 0x0

    .line 157
    invoke-static {v12, v14, v1, v2}, Lv4/h;->o(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_39

    .line 158
    sget v14, Lm5/g0;->a:I

    const/4 v14, -0x1

    .line 159
    invoke-virtual {v12, v15, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    .line 160
    aget-object v15, v12, v14

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v41

    .line 161
    array-length v15, v12

    const/4 v1, 0x1

    if-le v15, v1, :cond_3a

    .line 162
    aget-object v12, v12, v1

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v90

    goto :goto_16

    :cond_39
    const-wide/16 v41, -0x1

    :cond_3a
    :goto_16
    const-wide/16 v43, -0x1

    cmp-long v1, v41, v43

    if-nez v1, :cond_3b

    move-wide/from16 v90, v18

    :cond_3b
    if-nez v39, :cond_3d

    .line 163
    invoke-virtual/range {v75 .. v75}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3d

    .line 164
    invoke-virtual/range {v75 .. v75}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v12

    const/4 v14, 0x0

    new-array v15, v14, [Lr3/d$b;

    invoke-interface {v12, v15}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lr3/d$b;

    .line 165
    new-instance v15, Lr3/d;

    const/4 v14, 0x1

    .line 166
    invoke-direct {v15, v13, v14, v12}, Lr3/d;-><init>(Ljava/lang/String;Z[Lr3/d$b;)V

    if-nez v36, :cond_3c

    .line 167
    invoke-static {v13, v12}, Lv4/h;->c(Ljava/lang/String;[Lr3/d$b;)Lr3/d;

    move-result-object v36

    :cond_3c
    move-object/from16 v39, v15

    .line 168
    :cond_3d
    new-instance v12, Lv4/e$a;

    move-object/from16 v56, v12

    const/16 v73, 0x0

    move-object/from16 v58, v87

    move-wide/from16 v59, v10

    move/from16 v61, v81

    move-wide/from16 v62, v49

    move-object/from16 v64, v39

    move-object/from16 v65, v6

    move-wide/from16 v67, v90

    move-wide/from16 v69, v41

    invoke-direct/range {v56 .. v73}, Lv4/e$a;-><init>(Ljava/lang/String;Lv4/e$c;JIJLr3/d;Ljava/lang/String;Ljava/lang/String;JJZZZ)V

    move-object/from16 v14, v54

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long v49, v49, v10

    if-eqz v1, :cond_3e

    add-long v90, v90, v41

    :cond_3e
    move-object/from16 v56, v2

    move-object/from16 v57, v3

    goto/16 :goto_1a

    :cond_3f
    move/from16 v80, v1

    move-object/from16 v14, v54

    const-string v1, "#"

    .line 169
    invoke-virtual {v12, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 170
    invoke-static {v7, v8, v6, v9}, Lv4/h;->d(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v10, 0x1

    add-long v84, v7, v10

    .line 171
    invoke-static {v12, v2}, Lv4/h;->q(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    .line 172
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lv4/e$c;

    const-wide/16 v10, -0x1

    cmp-long v12, v76, v10

    if-nez v12, :cond_40

    move-wide/from16 v10, v18

    goto :goto_17

    :cond_40
    if-eqz v86, :cond_41

    if-nez v87, :cond_41

    if-nez v8, :cond_41

    .line 173
    new-instance v8, Lv4/e$c;

    const-wide/16 v43, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    move-object/from16 v41, v8

    move-object/from16 v42, v7

    move-wide/from16 v45, v37

    invoke-direct/range {v41 .. v48}, Lv4/e$c;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_41
    move-wide/from16 v10, v37

    :goto_17
    if-nez v39, :cond_42

    .line 175
    invoke-virtual/range {v75 .. v75}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_42

    .line 176
    invoke-virtual/range {v75 .. v75}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v15

    move-object/from16 v56, v2

    move-object/from16 v57, v3

    const/4 v2, 0x0

    new-array v3, v2, [Lr3/d$b;

    invoke-interface {v15, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lr3/d$b;

    .line 177
    new-instance v15, Lr3/d;

    const/4 v2, 0x1

    .line 178
    invoke-direct {v15, v13, v2, v3}, Lr3/d;-><init>(Ljava/lang/String;Z[Lr3/d$b;)V

    if-nez v36, :cond_43

    .line 179
    invoke-static {v13, v3}, Lv4/h;->c(Ljava/lang/String;[Lr3/d$b;)Lr3/d;

    move-result-object v36

    goto :goto_18

    :cond_42
    move-object/from16 v56, v2

    move-object/from16 v57, v3

    move-object/from16 v15, v39

    .line 180
    :cond_43
    :goto_18
    new-instance v2, Lv4/e$c;

    if-eqz v87, :cond_44

    move-object/from16 v39, v87

    goto :goto_19

    :cond_44
    move-object/from16 v39, v8

    :goto_19
    move-object/from16 v37, v2

    move-object/from16 v38, v7

    move-wide/from16 v41, v88

    move/from16 v43, v81

    move-wide/from16 v44, v82

    move-object/from16 v46, v15

    move-object/from16 v47, v6

    move-object/from16 v48, v1

    move-wide/from16 v49, v10

    move-wide/from16 v51, v76

    move-object/from16 v54, v14

    .line 181
    invoke-direct/range {v37 .. v54}, Lv4/e$c;-><init>(Ljava/lang/String;Lv4/e$c;Ljava/lang/String;JIJLr3/d;Ljava/lang/String;Ljava/lang/String;JJZLjava/util/List;)V

    .line 182
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-long v82, v82, v88

    .line 183
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v12, :cond_45

    add-long v10, v10, v76

    :cond_45
    move-object v14, v1

    move-wide/from16 v37, v10

    move-object/from16 v39, v15

    move-wide/from16 v88, v18

    move-object/from16 v40, v78

    move-wide/from16 v49, v82

    const/16 v53, 0x0

    const-wide/16 v76, -0x1

    goto :goto_1b

    :goto_1a
    move-wide/from16 v84, v7

    :goto_1b
    move-object v15, v0

    move-object/from16 v74, v6

    move-object v6, v14

    move-object/from16 v2, v56

    move-object/from16 v3, v57

    move-object/from16 v8, v75

    move-object/from16 v10, v78

    move-object/from16 v7, v79

    move/from16 v1, v80

    move-object/from16 v0, p0

    move-object/from16 v78, v0

    move-object/from16 v79, p1

    move-object/from16 v75, v9

    move-object/from16 v80, v13

    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_46
    move/from16 v80, v1

    move-object v14, v6

    move-object/from16 v79, v7

    move-object v0, v15

    .line 184
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v9, 0x0

    .line 185
    :goto_1c
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_4a

    .line 186
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv4/e$b;

    .line 187
    iget-wide v6, v2, Lv4/e$b;->b:J

    const-wide/16 v10, -0x1

    cmp-long v3, v6, v10

    if-nez v3, :cond_47

    .line 188
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-long v6, v3

    add-long v6, v27, v6

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v3

    int-to-long v12, v3

    sub-long/2addr v6, v12

    .line 189
    :cond_47
    iget v3, v2, Lv4/e$b;->c:I

    const/4 v8, -0x1

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    if-ne v3, v8, :cond_49

    cmp-long v15, v32, v12

    if-eqz v15, :cond_49

    .line 190
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-static {v0}, Lg0/n;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv4/e$c;

    iget-object v3, v3, Lv4/e$c;->t:Lu6/v;

    goto :goto_1d

    :cond_48
    move-object v3, v14

    .line 191
    :goto_1d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v15, 0x1

    sub-int/2addr v3, v15

    goto :goto_1e

    :cond_49
    const/4 v15, 0x1

    .line 192
    :goto_1e
    iget-object v2, v2, Lv4/e$b;->a:Landroid/net/Uri;

    new-instance v8, Lv4/e$b;

    invoke-direct {v8, v2, v6, v7, v3}, Lv4/e$b;-><init>(Landroid/net/Uri;JI)V

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1c

    :cond_4a
    const/4 v15, 0x1

    if-eqz v4, :cond_4b

    .line 193
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_4b
    new-instance v2, Lv4/e;

    cmp-long v3, v23, v18

    if-eqz v3, :cond_4c

    move/from16 v58, v15

    goto :goto_1f

    :cond_4c
    const/16 v58, 0x0

    :goto_1f
    move-object v4, v2

    move/from16 v5, v80

    move-object/from16 v54, v14

    move-object/from16 v6, p3

    move-object/from16 v7, v79

    move-wide/from16 v8, v20

    move/from16 v10, v22

    move-wide/from16 v11, v23

    move/from16 v13, v25

    move/from16 v14, v26

    move-wide/from16 v15, v27

    move/from16 v17, v29

    move-wide/from16 v18, v30

    move-wide/from16 v20, v32

    move/from16 v22, v34

    move/from16 v23, v35

    move/from16 v24, v58

    move-object/from16 v25, v36

    move-object/from16 v26, v0

    move-object/from16 v27, v54

    move-object/from16 v28, v55

    move-object/from16 v29, v1

    invoke-direct/range {v4 .. v29}, Lv4/e;-><init>(ILjava/lang/String;Ljava/util/List;JZJZIJIJJZZZLr3/d;Ljava/util/List;Ljava/util/List;Lv4/e$e;Ljava/util/Map;)V

    return-object v2
.end method

.method public static j(Lv4/h$b;Ljava/lang/String;)Lv4/f;
    .locals 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v35, v10

    move v10, v9

    move/from16 v9, v35

    .line 11
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lv4/h$b;->a()Z

    move-result v13

    const-string v14, "application/x-mpegURL"

    if-eqz v13, :cond_10

    .line 12
    invoke-virtual/range {p0 .. p0}, Lv4/h$b;->b()Ljava/lang/String;

    move-result-object v13

    const-string v15, "#EXT"

    .line 13
    invoke-virtual {v13, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 14
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v15, "#EXT-X-I-FRAME-STREAM-INF"

    .line 15
    invoke-virtual {v13, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    move/from16 v16, v10

    const-string v10, "#EXT-X-DEFINE"

    .line 16
    invoke-virtual {v13, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 17
    sget-object v10, Lv4/h;->P:Ljava/util/regex/Pattern;

    .line 18
    invoke-static {v13, v10, v11}, Lv4/h;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    sget-object v14, Lv4/h;->Z:Ljava/util/regex/Pattern;

    .line 19
    invoke-static {v13, v14, v11}, Lv4/h;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v13

    .line 20
    invoke-virtual {v11, v10, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    move-object/from16 v17, v7

    goto :goto_2

    :cond_2
    const-string v10, "#EXT-X-INDEPENDENT-SEGMENTS"

    .line 21
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    move-object/from16 v17, v7

    goto :goto_3

    :cond_3
    const-string v10, "#EXT-X-MEDIA"

    .line 22
    invoke-virtual {v13, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 23
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const-string v10, "#EXT-X-SESSION-KEY"

    .line 24
    invoke-virtual {v13, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 25
    sget-object v10, Lv4/h;->I:Ljava/util/regex/Pattern;

    const-string v14, "identity"

    .line 26
    invoke-static {v13, v10, v14, v11}, Lv4/h;->o(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 27
    invoke-static {v13, v10, v11}, Lv4/h;->f(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lr3/d$b;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 28
    sget-object v14, Lv4/h;->H:Ljava/util/regex/Pattern;

    invoke-static {v13, v14, v11}, Lv4/h;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v13

    .line 29
    invoke-static {v13}, Lv4/h;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 30
    new-instance v14, Lr3/d;

    const/4 v15, 0x1

    move-object/from16 v17, v7

    new-array v7, v15, [Lr3/d$b;

    const/16 v18, 0x0

    aput-object v10, v7, v18

    .line 31
    invoke-direct {v14, v13, v15, v7}, Lr3/d;-><init>(Ljava/lang/String;Z[Lr3/d$b;)V

    .line 32
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object/from16 v17, v7

    const-string v7, "#EXT-X-STREAM-INF"

    .line 33
    invoke-virtual {v13, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    if-eqz v15, :cond_6

    goto :goto_4

    :cond_6
    :goto_2
    move/from16 v10, v16

    :goto_3
    move-object/from16 v31, v3

    move-object/from16 v30, v4

    move-object/from16 v29, v5

    move-object/from16 v28, v6

    move-object/from16 v27, v8

    move-object/from16 v26, v12

    move-object v5, v0

    goto/16 :goto_9

    :cond_7
    :goto_4
    const-string v7, "CLOSED-CAPTIONS=NONE"

    .line 34
    invoke-virtual {v13, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    or-int/2addr v7, v9

    if-eqz v15, :cond_8

    const/16 v9, 0x4000

    goto :goto_5

    :cond_8
    const/4 v9, 0x0

    .line 35
    :goto_5
    sget-object v10, Lv4/h;->h:Ljava/util/regex/Pattern;

    invoke-static {v13, v10}, Lv4/h;->h(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v10

    move/from16 v25, v7

    .line 36
    sget-object v7, Lv4/h;->c:Ljava/util/regex/Pattern;

    invoke-static {v13, v7}, Lv4/h;->m(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v7

    move-object/from16 v26, v12

    .line 37
    sget-object v12, Lv4/h;->j:Ljava/util/regex/Pattern;

    move-object/from16 v27, v8

    const/4 v8, 0x0

    .line 38
    invoke-static {v13, v12, v8, v11}, Lv4/h;->o(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v28, v6

    .line 39
    sget-object v6, Lv4/h;->k:Ljava/util/regex/Pattern;

    .line 40
    invoke-static {v13, v6, v8, v11}, Lv4/h;->o(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 41
    sget v8, Lm5/g0;->a:I

    const-string v8, "x"

    move-object/from16 v29, v5

    const/4 v5, -0x1

    .line 42
    invoke-virtual {v6, v8, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 43
    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v8, 0x1

    .line 44
    aget-object v5, v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-lez v6, :cond_9

    if-gtz v5, :cond_b

    :cond_9
    const/4 v5, -0x1

    const/4 v6, -0x1

    goto :goto_6

    :cond_a
    move-object/from16 v29, v5

    const/4 v6, -0x1

    const/4 v5, -0x1

    .line 45
    :cond_b
    :goto_6
    sget-object v8, Lv4/h;->l:Ljava/util/regex/Pattern;

    move-object/from16 v30, v4

    const/4 v4, 0x0

    .line 46
    invoke-static {v13, v8, v4, v11}, Lv4/h;->o(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 47
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    goto :goto_7

    :cond_c
    const/high16 v8, -0x40800000    # -1.0f

    :goto_7
    move-object/from16 v31, v3

    .line 48
    sget-object v3, Lv4/h;->d:Ljava/util/regex/Pattern;

    .line 49
    invoke-static {v13, v3, v4, v11}, Lv4/h;->o(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v32, v0

    .line 50
    sget-object v0, Lv4/h;->e:Ljava/util/regex/Pattern;

    .line 51
    invoke-static {v13, v0, v4, v11}, Lv4/h;->o(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v33, v0

    .line 52
    sget-object v0, Lv4/h;->f:Ljava/util/regex/Pattern;

    .line 53
    invoke-static {v13, v0, v4, v11}, Lv4/h;->o(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v34, v0

    .line 54
    sget-object v0, Lv4/h;->g:Ljava/util/regex/Pattern;

    .line 55
    invoke-static {v13, v0, v4, v11}, Lv4/h;->o(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    if-eqz v15, :cond_d

    .line 56
    sget-object v4, Lv4/h;->K:Ljava/util/regex/Pattern;

    .line 57
    invoke-static {v13, v4, v11}, Lv4/h;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lm5/e0;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_8

    .line 58
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lv4/h$b;->a()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 59
    invoke-virtual/range {p0 .. p0}, Lv4/h$b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v11}, Lv4/h;->q(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 60
    invoke-static {v1, v4}, Lm5/e0;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 61
    :goto_8
    new-instance v13, Ln3/s0$a;

    invoke-direct {v13}, Ln3/s0$a;-><init>()V

    .line 62
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v13, v15}, Ln3/s0$a;->b(I)Ln3/s0$a;

    .line 63
    iput-object v14, v13, Ln3/s0$a;->j:Ljava/lang/String;

    .line 64
    iput-object v12, v13, Ln3/s0$a;->h:Ljava/lang/String;

    .line 65
    iput v7, v13, Ln3/s0$a;->f:I

    .line 66
    iput v10, v13, Ln3/s0$a;->g:I

    .line 67
    iput v6, v13, Ln3/s0$a;->p:I

    .line 68
    iput v5, v13, Ln3/s0$a;->q:I

    .line 69
    iput v8, v13, Ln3/s0$a;->r:F

    .line 70
    iput v9, v13, Ln3/s0$a;->e:I

    .line 71
    new-instance v5, Ln3/s0;

    invoke-direct {v5, v13}, Ln3/s0;-><init>(Ln3/s0$a;)V

    .line 72
    new-instance v6, Lv4/f$b;

    move-object/from16 v18, v6

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v3

    move-object/from16 v22, v33

    move-object/from16 v23, v34

    move-object/from16 v24, v0

    invoke-direct/range {v18 .. v24}, Lv4/f$b;-><init>(Landroid/net/Uri;Ln3/s0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, v32

    .line 74
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-nez v6, :cond_e

    .line 75
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 76
    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_e
    new-instance v4, Lu4/o$b;

    move-object/from16 v18, v4

    move/from16 v19, v7

    move/from16 v20, v10

    move-object/from16 v21, v3

    move-object/from16 v22, v33

    move-object/from16 v23, v34

    move-object/from16 v24, v0

    invoke-direct/range {v18 .. v24}, Lu4/o$b;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v10, v16

    move/from16 v9, v25

    :goto_9
    move-object v0, v5

    move-object/from16 v7, v17

    move-object/from16 v12, v26

    move-object/from16 v8, v27

    move-object/from16 v6, v28

    move-object/from16 v5, v29

    move-object/from16 v4, v30

    move-object/from16 v3, v31

    goto/16 :goto_0

    :cond_f
    const-string v0, "#EXT-X-STREAM-INF must be followed by another line"

    const/4 v1, 0x0

    .line 78
    invoke-static {v0, v1}, Ln3/i1;->b(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v0

    throw v0

    :cond_10
    move-object/from16 v31, v3

    move-object/from16 v30, v4

    move-object/from16 v29, v5

    move-object/from16 v28, v6

    move-object/from16 v17, v7

    move-object/from16 v27, v8

    move/from16 v16, v10

    move-object/from16 v26, v12

    move-object v5, v0

    .line 79
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 80
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x0

    .line 81
    :goto_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_13

    .line 82
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv4/f$b;

    .line 83
    iget-object v7, v6, Lv4/f$b;->a:Landroid/net/Uri;

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 84
    iget-object v7, v6, Lv4/f$b;->b:Ln3/s0;

    iget-object v7, v7, Ln3/s0;->q:Lf4/a;

    if-nez v7, :cond_11

    const/4 v7, 0x1

    goto :goto_b

    :cond_11
    const/4 v7, 0x0

    :goto_b
    invoke-static {v7}, Lm5/a;->e(Z)V

    .line 85
    new-instance v7, Lu4/o;

    iget-object v8, v6, Lv4/f$b;->a:Landroid/net/Uri;

    .line 86
    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 87
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x0

    .line 88
    invoke-direct {v7, v10, v10, v8}, Lu4/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 89
    new-instance v8, Lf4/a;

    const/4 v10, 0x1

    new-array v10, v10, [Lf4/a$b;

    const/4 v12, 0x0

    aput-object v7, v10, v12

    invoke-direct {v8, v10}, Lf4/a;-><init>([Lf4/a$b;)V

    .line 90
    iget-object v7, v6, Lv4/f$b;->b:Ln3/s0;

    .line 91
    new-instance v10, Ln3/s0$a;

    invoke-direct {v10, v7}, Ln3/s0$a;-><init>(Ln3/s0;)V

    .line 92
    iput-object v8, v10, Ln3/s0$a;->i:Lf4/a;

    .line 93
    new-instance v7, Ln3/s0;

    invoke-direct {v7, v10}, Ln3/s0;-><init>(Ln3/s0$a;)V

    .line 94
    new-instance v8, Lv4/f$b;

    iget-object v10, v6, Lv4/f$b;->a:Landroid/net/Uri;

    iget-object v12, v6, Lv4/f$b;->c:Ljava/lang/String;

    iget-object v13, v6, Lv4/f$b;->d:Ljava/lang/String;

    iget-object v15, v6, Lv4/f$b;->e:Ljava/lang/String;

    iget-object v6, v6, Lv4/f$b;->f:Ljava/lang/String;

    move-object/from16 v18, v8

    move-object/from16 v19, v10

    move-object/from16 v20, v7

    move-object/from16 v21, v12

    move-object/from16 v22, v13

    move-object/from16 v23, v15

    move-object/from16 v24, v6

    invoke-direct/range {v18 .. v24}, Lv4/f$b;-><init>(Landroid/net/Uri;Ln3/s0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_13
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v8, v5

    .line 96
    :goto_c
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_35

    move-object/from16 v5, v31

    .line 97
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 98
    sget-object v7, Lv4/h;->Q:Ljava/util/regex/Pattern;

    invoke-static {v6, v7, v11}, Lv4/h;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    .line 99
    sget-object v10, Lv4/h;->P:Ljava/util/regex/Pattern;

    invoke-static {v6, v10, v11}, Lv4/h;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 100
    new-instance v12, Ln3/s0$a;

    invoke-direct {v12}, Ln3/s0$a;-><init>()V

    const-string v13, ":"

    .line 101
    invoke-static {v7, v13, v10}, La0/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 102
    iput-object v13, v12, Ln3/s0$a;->a:Ljava/lang/String;

    .line 103
    iput-object v10, v12, Ln3/s0$a;->b:Ljava/lang/String;

    .line 104
    iput-object v14, v12, Ln3/s0$a;->j:Ljava/lang/String;

    .line 105
    sget-object v13, Lv4/h;->U:Ljava/util/regex/Pattern;

    invoke-static {v6, v13}, Lv4/h;->k(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v13

    .line 106
    sget-object v15, Lv4/h;->V:Ljava/util/regex/Pattern;

    invoke-static {v6, v15}, Lv4/h;->k(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v15

    if-eqz v15, :cond_14

    or-int/lit8 v13, v13, 0x2

    .line 107
    :cond_14
    sget-object v15, Lv4/h;->T:Ljava/util/regex/Pattern;

    invoke-static {v6, v15}, Lv4/h;->k(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v15

    if-eqz v15, :cond_15

    or-int/lit8 v13, v13, 0x4

    .line 108
    :cond_15
    iput v13, v12, Ln3/s0$a;->d:I

    .line 109
    sget-object v13, Lv4/h;->R:Ljava/util/regex/Pattern;

    const/4 v15, 0x0

    .line 110
    invoke-static {v6, v13, v15, v11}, Lv4/h;->o(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v13

    .line 111
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_16

    const/4 v13, 0x0

    move-object/from16 v31, v5

    goto :goto_e

    .line 112
    :cond_16
    sget v15, Lm5/g0;->a:I

    const-string v15, ","

    move-object/from16 v31, v5

    const/4 v5, -0x1

    .line 113
    invoke-virtual {v13, v15, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    const-string v13, "public.accessibility.describes-video"

    .line 114
    invoke-static {v5, v13}, Lm5/g0;->k([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    const/16 v13, 0x200

    goto :goto_d

    :cond_17
    const/4 v13, 0x0

    :goto_d
    const-string v15, "public.accessibility.transcribes-spoken-dialog"

    .line 115
    invoke-static {v5, v15}, Lm5/g0;->k([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_18

    or-int/lit16 v13, v13, 0x1000

    :cond_18
    const-string v15, "public.accessibility.describes-music-and-sound"

    .line 116
    invoke-static {v5, v15}, Lm5/g0;->k([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_19

    or-int/lit16 v13, v13, 0x400

    :cond_19
    const-string v15, "public.easy-to-read"

    .line 117
    invoke-static {v5, v15}, Lm5/g0;->k([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    or-int/lit16 v13, v13, 0x2000

    .line 118
    :cond_1a
    :goto_e
    iput v13, v12, Ln3/s0$a;->e:I

    .line 119
    sget-object v5, Lv4/h;->O:Ljava/util/regex/Pattern;

    const/4 v13, 0x0

    .line 120
    invoke-static {v6, v5, v13, v11}, Lv4/h;->o(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 121
    iput-object v5, v12, Ln3/s0$a;->c:Ljava/lang/String;

    .line 122
    sget-object v5, Lv4/h;->K:Ljava/util/regex/Pattern;

    .line 123
    invoke-static {v6, v5, v13, v11}, Lv4/h;->o(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1b

    const/4 v5, 0x0

    goto :goto_f

    .line 124
    :cond_1b
    invoke-static {v1, v5}, Lm5/e0;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 125
    :goto_f
    new-instance v13, Lf4/a;

    const/4 v15, 0x1

    new-array v15, v15, [Lf4/a$b;

    new-instance v1, Lu4/o;

    move-object/from16 v18, v14

    .line 126
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v14

    invoke-direct {v1, v7, v10, v14}, Lu4/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    const/4 v14, 0x0

    aput-object v1, v15, v14

    invoke-direct {v13, v15}, Lf4/a;-><init>([Lf4/a$b;)V

    .line 127
    sget-object v1, Lv4/h;->M:Ljava/util/regex/Pattern;

    invoke-static {v6, v1, v11}, Lv4/h;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v14

    const/4 v15, 0x2

    sparse-switch v14, :sswitch_data_0

    goto :goto_10

    :sswitch_0
    const-string v14, "VIDEO"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_10

    :cond_1c
    const/4 v1, 0x3

    goto :goto_11

    :sswitch_1
    const-string v14, "AUDIO"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_10

    :cond_1d
    move v1, v15

    goto :goto_11

    :sswitch_2
    const-string v14, "CLOSED-CAPTIONS"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_10

    :cond_1e
    const/4 v1, 0x1

    goto :goto_11

    :sswitch_3
    const-string v14, "SUBTITLES"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_10

    :cond_1f
    const/4 v1, 0x0

    goto :goto_11

    :goto_10
    const/4 v1, -0x1

    :goto_11
    if-eqz v1, :cond_2f

    const/4 v14, 0x1

    if-eq v1, v14, :cond_2c

    if-eq v1, v15, :cond_25

    const/4 v6, 0x3

    if-eq v1, v6, :cond_20

    goto :goto_14

    :cond_20
    const/4 v1, 0x0

    .line 128
    :goto_12
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_22

    .line 129
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv4/f$b;

    .line 130
    iget-object v14, v6, Lv4/f$b;->c:Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_21

    goto :goto_13

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_22
    const/4 v6, 0x0

    :goto_13
    if-eqz v6, :cond_23

    .line 131
    iget-object v1, v6, Lv4/f$b;->b:Ln3/s0;

    .line 132
    iget-object v6, v1, Ln3/s0;->p:Ljava/lang/String;

    invoke-static {v6, v15}, Lm5/g0;->s(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 133
    iput-object v6, v12, Ln3/s0$a;->h:Ljava/lang/String;

    .line 134
    invoke-static {v6}, Lm5/s;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 135
    iput-object v6, v12, Ln3/s0$a;->k:Ljava/lang/String;

    .line 136
    iget v6, v1, Ln3/s0;->x:I

    .line 137
    iput v6, v12, Ln3/s0$a;->p:I

    .line 138
    iget v6, v1, Ln3/s0;->y:I

    .line 139
    iput v6, v12, Ln3/s0$a;->q:I

    .line 140
    iget v1, v1, Ln3/s0;->z:F

    .line 141
    iput v1, v12, Ln3/s0$a;->r:F

    :cond_23
    if-nez v5, :cond_24

    :goto_14
    move-object/from16 v14, v30

    goto :goto_15

    .line 142
    :cond_24
    iput-object v13, v12, Ln3/s0$a;->i:Lf4/a;

    .line 143
    new-instance v1, Lv4/f$a;

    .line 144
    new-instance v6, Ln3/s0;

    invoke-direct {v6, v12}, Ln3/s0;-><init>(Ln3/s0$a;)V

    .line 145
    invoke-direct {v1, v5, v6, v10}, Lv4/f$a;-><init>(Landroid/net/Uri;Ln3/s0;Ljava/lang/String;)V

    move-object/from16 v14, v30

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_15
    move-object/from16 p0, v8

    move-object/from16 v6, v28

    move-object/from16 v8, v29

    goto/16 :goto_1f

    :cond_25
    move-object/from16 v14, v30

    const/4 v1, 0x0

    .line 146
    :goto_16
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v1, v15, :cond_27

    .line 147
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lv4/f$b;

    move-object/from16 p0, v8

    .line 148
    iget-object v8, v15, Lv4/f$b;->d:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26

    goto :goto_17

    :cond_26
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v8, p0

    goto :goto_16

    :cond_27
    move-object/from16 p0, v8

    const/4 v15, 0x0

    :goto_17
    if-eqz v15, :cond_28

    .line 149
    iget-object v1, v15, Lv4/f$b;->b:Ln3/s0;

    iget-object v1, v1, Ln3/s0;->p:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {v1, v7}, Lm5/g0;->s(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 150
    iput-object v1, v12, Ln3/s0$a;->h:Ljava/lang/String;

    .line 151
    invoke-static {v1}, Lm5/s;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_18

    :cond_28
    const/4 v1, 0x0

    .line 152
    :goto_18
    sget-object v7, Lv4/h;->i:Ljava/util/regex/Pattern;

    const/4 v8, 0x0

    .line 153
    invoke-static {v6, v7, v8, v11}, Lv4/h;->o(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_29

    .line 154
    sget v7, Lm5/g0;->a:I

    const-string v7, "/"

    const/4 v8, 0x2

    .line 155
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 156
    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 157
    iput v7, v12, Ln3/s0$a;->x:I

    const-string v7, "audio/eac3"

    .line 158
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    const-string v7, "/JOC"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_29

    const-string v1, "ec+3"

    .line 159
    iput-object v1, v12, Ln3/s0$a;->h:Ljava/lang/String;

    const-string v1, "audio/eac3-joc"

    .line 160
    :cond_29
    iput-object v1, v12, Ln3/s0$a;->k:Ljava/lang/String;

    if-eqz v5, :cond_2a

    .line 161
    iput-object v13, v12, Ln3/s0$a;->i:Lf4/a;

    .line 162
    new-instance v1, Lv4/f$a;

    .line 163
    new-instance v6, Ln3/s0;

    invoke-direct {v6, v12}, Ln3/s0;-><init>(Ln3/s0$a;)V

    .line 164
    invoke-direct {v1, v5, v6, v10}, Lv4/f$a;-><init>(Landroid/net/Uri;Ln3/s0;Ljava/lang/String;)V

    move-object/from16 v8, v29

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_2a
    move-object/from16 v8, v29

    if-eqz v15, :cond_2b

    .line 165
    new-instance v1, Ln3/s0;

    invoke-direct {v1, v12}, Ln3/s0;-><init>(Ln3/s0$a;)V

    goto :goto_1b

    :cond_2b
    :goto_19
    move-object/from16 v6, v28

    goto/16 :goto_1f

    :cond_2c
    move-object/from16 p0, v8

    move-object/from16 v8, v29

    move-object/from16 v14, v30

    .line 166
    sget-object v1, Lv4/h;->S:Ljava/util/regex/Pattern;

    invoke-static {v6, v1, v11}, Lv4/h;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "CC"

    .line 167
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    const/4 v5, 0x2

    .line 168
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v5, "application/cea-608"

    goto :goto_1a

    :cond_2d
    const/4 v5, 0x7

    .line 169
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v5, "application/cea-708"

    :goto_1a
    if-nez v0, :cond_2e

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    :cond_2e
    iput-object v5, v12, Ln3/s0$a;->k:Ljava/lang/String;

    .line 172
    iput v1, v12, Ln3/s0$a;->C:I

    .line 173
    new-instance v1, Ln3/s0;

    invoke-direct {v1, v12}, Ln3/s0;-><init>(Ln3/s0$a;)V

    .line 174
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p0

    :goto_1b
    move-object/from16 v6, v28

    goto :goto_20

    :cond_2f
    move-object/from16 p0, v8

    move-object/from16 v8, v29

    move-object/from16 v14, v30

    const/4 v1, 0x0

    .line 175
    :goto_1c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_31

    .line 176
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv4/f$b;

    .line 177
    iget-object v15, v6, Lv4/f$b;->e:Ljava/lang/String;

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_30

    goto :goto_1d

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_31
    const/4 v6, 0x0

    :goto_1d
    if-eqz v6, :cond_32

    .line 178
    iget-object v1, v6, Lv4/f$b;->b:Ln3/s0;

    iget-object v1, v1, Ln3/s0;->p:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-static {v1, v6}, Lm5/g0;->s(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 179
    iput-object v1, v12, Ln3/s0$a;->h:Ljava/lang/String;

    .line 180
    invoke-static {v1}, Lm5/s;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    :cond_32
    const/4 v1, 0x0

    :goto_1e
    if-nez v1, :cond_33

    const-string v1, "text/vtt"

    .line 181
    :cond_33
    iput-object v1, v12, Ln3/s0$a;->k:Ljava/lang/String;

    .line 182
    iput-object v13, v12, Ln3/s0$a;->i:Lf4/a;

    if-eqz v5, :cond_34

    .line 183
    new-instance v1, Lv4/f$a;

    .line 184
    new-instance v6, Ln3/s0;

    invoke-direct {v6, v12}, Ln3/s0;-><init>(Ln3/s0$a;)V

    .line 185
    invoke-direct {v1, v5, v6, v10}, Lv4/f$a;-><init>(Landroid/net/Uri;Ln3/s0;Ljava/lang/String;)V

    move-object/from16 v6, v28

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_34
    move-object/from16 v6, v28

    const-string v1, "HlsPlaylistParser"

    const-string v5, "EXT-X-MEDIA tag with missing mandatory URI attribute: skipping"

    .line 186
    invoke-static {v1, v5}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1f
    move-object/from16 v1, p0

    :goto_20
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v28, v6

    move-object/from16 v29, v8

    move-object/from16 v30, v14

    move-object/from16 v14, v18

    move-object v8, v1

    move-object/from16 v1, p1

    goto/16 :goto_c

    :cond_35
    move-object/from16 p0, v8

    move-object/from16 v6, v28

    move-object/from16 v8, v29

    move-object/from16 v14, v30

    if-eqz v9, :cond_36

    .line 187
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_36
    move-object v9, v0

    .line 188
    new-instance v13, Lv4/f;

    move-object v0, v13

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    move-object v4, v14

    move-object v5, v8

    move-object/from16 v7, v17

    move-object/from16 v8, p0

    move/from16 v10, v16

    move-object/from16 v12, v26

    invoke-direct/range {v0 .. v12}, Lv4/f;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ln3/s0;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    return-object v13

    nop

    :sswitch_data_0
    .sparse-switch
        -0x392db8c5 -> :sswitch_3
        -0x13dc6572 -> :sswitch_2
        0x3bba3b6 -> :sswitch_1
        0x4de1c5b -> :sswitch_0
    .end sparse-switch
.end method

.method public static k(Ljava/lang/String;Ljava/util/regex/Pattern;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "YES"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static l(Ljava/lang/String;Ljava/util/regex/Pattern;)D
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/high16 p0, -0x3c20000000000000L    # -9.223372036854776E18

    return-wide p0
.end method

.method public static m(Ljava/lang/String;Ljava/util/regex/Pattern;)I
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static n(Ljava/lang/String;Ljava/util/regex/Pattern;)J
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public static o(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p2, p3}, Lv4/h;->q(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    :cond_2
    :goto_0
    return-object p2
.end method

.method public static p(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/i1;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, p2}, Lv4/h;->o(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    const-string p2, "Couldn\'t match "

    .line 2
    invoke-static {p2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 3
    invoke-virtual {p1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0, v0}, Ln3/i1;->b(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object p0

    throw p0
.end method

.method public static q(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    sget-object v0, Lv4/h;->b0:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 3
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p0, v0, v1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static r(Ljava/io/BufferedReader;ZI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 1
    invoke-static {p2}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-static {p2}, Lm5/g0;->J(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result p2

    goto :goto_0

    :cond_1
    return p2
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2
    new-instance p2, Ljava/util/ArrayDeque;

    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xef

    if-ne v1, v3, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v1

    const/16 v3, 0xbb

    if-ne v1, v3, :cond_4

    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v1

    const/16 v3, 0xbf

    if-eq v1, v3, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v1

    :cond_1
    const/4 v3, 0x1

    .line 6
    invoke-static {v0, v3, v1}, Lv4/h;->r(Ljava/io/BufferedReader;ZI)I

    move-result v1

    const/4 v3, 0x7

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    const-string v5, "#EXTM3U"

    .line 7
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v1, v5, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_3
    invoke-static {v0, v2, v1}, Lv4/h;->r(Ljava/io/BufferedReader;ZI)I

    move-result v1

    .line 10
    invoke-static {v1}, Lm5/g0;->J(I)Z

    move-result v2

    :cond_4
    :goto_1
    const/4 v1, 0x0

    if-eqz v2, :cond_a

    .line 11
    :goto_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 12
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    const-string v3, "#EXT-X-STREAM-INF"

    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 15
    invoke-virtual {p2, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v1, Lv4/h$b;

    invoke-direct {v1, p2, v0}, Lv4/h$b;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lv4/h;->j(Lv4/h$b;Ljava/lang/String;)Lv4/f;

    move-result-object p1

    goto :goto_4

    :cond_6
    const-string v3, "#EXT-X-TARGETDURATION"

    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "#EXT-X-MEDIA-SEQUENCE"

    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "#EXTINF"

    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "#EXT-X-KEY"

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "#EXT-X-BYTERANGE"

    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "#EXT-X-DISCONTINUITY"

    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "#EXT-X-DISCONTINUITY-SEQUENCE"

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "#EXT-X-ENDLIST"

    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_3

    .line 25
    :cond_7
    invoke-virtual {p2, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 26
    :cond_8
    :goto_3
    invoke-virtual {p2, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v1, p0, Lv4/h;->a:Lv4/f;

    iget-object v2, p0, Lv4/h;->b:Lv4/e;

    new-instance v3, Lv4/h$b;

    invoke-direct {v3, p2, v0}, Lv4/h$b;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    .line 28
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-static {v1, v2, v3, p1}, Lv4/h;->i(Lv4/f;Lv4/e;Lv4/h$b;Ljava/lang/String;)Lv4/e;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :goto_4
    invoke-static {v0}, Lm5/g0;->g(Ljava/io/Closeable;)V

    return-object p1

    :cond_9
    invoke-static {v0}, Lm5/g0;->g(Ljava/io/Closeable;)V

    const-string p1, "Failed to parse the playlist, could not identify any tags."

    .line 31
    invoke-static {p1, v1}, Ln3/i1;->b(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object p1

    throw p1

    :cond_a
    :try_start_1
    const-string p1, "Input does not start with the #EXTM3U header."

    .line 32
    invoke-static {p1, v1}, Ln3/i1;->b(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 33
    invoke-static {v0}, Lm5/g0;->g(Ljava/io/Closeable;)V

    .line 34
    throw p1
.end method
