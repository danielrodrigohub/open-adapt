.class public final Li5/a;
.super Lz4/f;
.source "Mp4WebvttDecoder.java"


# instance fields
.field public final m:Lm5/w;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lz4/f;-><init>()V

    .line 2
    new-instance v0, Lm5/w;

    invoke-direct {v0}, Lm5/w;-><init>()V

    iput-object v0, p0, Li5/a;->m:Lm5/w;

    return-void
.end method


# virtual methods
.method public final k([BIZ)Lz4/g;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lz4/i;
        }
    .end annotation

    .line 1
    iget-object p3, p0, Li5/a;->m:Lm5/w;

    invoke-virtual {p3, p1, p2}, Lm5/w;->B([BI)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :goto_0
    iget-object p2, p0, Li5/a;->m:Lm5/w;

    .line 4
    iget p3, p2, Lm5/w;->c:I

    iget v0, p2, Lm5/w;->b:I

    sub-int/2addr p3, v0

    if-lez p3, :cond_8

    const/16 v0, 0x8

    if-lt p3, v0, :cond_7

    .line 5
    invoke-virtual {p2}, Lm5/w;->e()I

    move-result p2

    .line 6
    iget-object p3, p0, Li5/a;->m:Lm5/w;

    invoke-virtual {p3}, Lm5/w;->e()I

    move-result p3

    const v1, 0x76747463

    if-ne p3, v1, :cond_6

    .line 7
    iget-object p3, p0, Li5/a;->m:Lm5/w;

    add-int/lit8 p2, p2, -0x8

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    :cond_0
    :goto_1
    if-lez p2, :cond_3

    if-lt p2, v0, :cond_2

    .line 8
    invoke-virtual {p3}, Lm5/w;->e()I

    move-result v4

    .line 9
    invoke-virtual {p3}, Lm5/w;->e()I

    move-result v5

    add-int/lit8 p2, p2, -0x8

    sub-int/2addr v4, v0

    .line 10
    iget-object v6, p3, Lm5/w;->a:[B

    .line 11
    iget v7, p3, Lm5/w;->b:I

    .line 12
    invoke-static {v6, v7, v4}, Lm5/g0;->o([BII)Ljava/lang/String;

    move-result-object v6

    .line 13
    invoke-virtual {p3, v4}, Lm5/w;->E(I)V

    sub-int/2addr p2, v4

    const v4, 0x73747467

    if-ne v5, v4, :cond_1

    .line 14
    sget-object v3, Li5/g;->a:Ljava/util/regex/Pattern;

    .line 15
    new-instance v3, Li5/g$d;

    invoke-direct {v3}, Li5/g$d;-><init>()V

    .line 16
    invoke-static {v6, v3}, Li5/g;->e(Ljava/lang/String;Li5/g$d;)V

    .line 17
    invoke-virtual {v3}, Li5/g$d;->a()Lz4/a$a;

    move-result-object v3

    goto :goto_1

    :cond_1
    const v4, 0x7061796c

    if-ne v5, v4, :cond_0

    .line 18
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 19
    invoke-static {v1, v2, v4}, Li5/g;->f(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;

    move-result-object v2

    goto :goto_1

    .line 20
    :cond_2
    new-instance p1, Lz4/i;

    const-string p2, "Incomplete vtt cue box header found."

    invoke-direct {p1, p2}, Lz4/i;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    if-nez v2, :cond_4

    const-string v2, ""

    :cond_4
    if-eqz v3, :cond_5

    .line 21
    iput-object v2, v3, Lz4/a$a;->a:Ljava/lang/CharSequence;

    .line 22
    invoke-virtual {v3}, Lz4/a$a;->a()Lz4/a;

    move-result-object p2

    goto :goto_2

    .line 23
    :cond_5
    sget-object p2, Li5/g;->a:Ljava/util/regex/Pattern;

    .line 24
    new-instance p2, Li5/g$d;

    invoke-direct {p2}, Li5/g$d;-><init>()V

    .line 25
    iput-object v2, p2, Li5/g$d;->c:Ljava/lang/CharSequence;

    .line 26
    invoke-virtual {p2}, Li5/g$d;->a()Lz4/a$a;

    move-result-object p2

    invoke-virtual {p2}, Lz4/a$a;->a()Lz4/a;

    move-result-object p2

    .line 27
    :goto_2
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 28
    :cond_6
    iget-object p3, p0, Li5/a;->m:Lm5/w;

    add-int/lit8 p2, p2, -0x8

    invoke-virtual {p3, p2}, Lm5/w;->E(I)V

    goto/16 :goto_0

    .line 29
    :cond_7
    new-instance p1, Lz4/i;

    const-string p2, "Incomplete Mp4Webvtt Top Level box header found."

    invoke-direct {p1, p2}, Lz4/i;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_8
    new-instance p2, Li5/b;

    invoke-direct {p2, p1}, Li5/b;-><init>(Ljava/util/List;)V

    return-object p2
.end method
