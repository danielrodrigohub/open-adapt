.class public final synthetic Ln3/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ln3/h$a;
.implements Lm5/o$a;
.implements Ls3/f$a$a;
.implements Ls3/l;


# static fields
.field public static final synthetic c:Ln3/n;

.field public static final synthetic d:Ln3/n;

.field public static final synthetic e:Ln3/n;

.field public static final synthetic f:Ln3/n;

.field public static final synthetic g:Ln3/n;

.field public static final synthetic h:Ln3/n;

.field public static final synthetic i:Ln3/n;


# instance fields
.field public final synthetic b:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Ln3/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln3/n;-><init>(I)V

    sput-object v0, Ln3/n;->c:Ln3/n;

    new-instance v0, Ln3/n;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ln3/n;-><init>(I)V

    sput-object v0, Ln3/n;->d:Ln3/n;

    new-instance v0, Ln3/n;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ln3/n;-><init>(I)V

    sput-object v0, Ln3/n;->e:Ln3/n;

    new-instance v0, Ln3/n;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ln3/n;-><init>(I)V

    sput-object v0, Ln3/n;->f:Ln3/n;

    new-instance v0, Ln3/n;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ln3/n;-><init>(I)V

    sput-object v0, Ln3/n;->g:Ln3/n;

    new-instance v0, Ln3/n;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ln3/n;-><init>(I)V

    sput-object v0, Ln3/n;->h:Ln3/n;

    new-instance v0, Ln3/n;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ln3/n;-><init>(I)V

    sput-object v0, Ln3/n;->i:Ln3/n;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ln3/n;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/reflect/Constructor;
    .locals 2

    sget-object v0, Ls3/f;->b:[I

    const-string v0, "com.google.android.exoplayer2.decoder.midi.MidiExtractor"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ls3/h;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public final c()[Ls3/h;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ls3/h;

    .line 1
    new-instance v1, Lc4/e;

    const/4 v2, 0x0

    .line 2
    invoke-direct {v1, v2}, Lc4/e;-><init>(I)V

    aput-object v1, v0, v2

    return-object v0
.end method

.method public final d(Landroid/os/Bundle;)Ln3/h;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Ln3/n;->b:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_2

    .line 1
    :sswitch_0
    new-instance v2, Ln3/a1$a;

    invoke-direct {v2}, Ln3/a1$a;-><init>()V

    .line 2
    invoke-static {v7}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 3
    iput-object v7, v2, Ln3/a1$a;->a:Ljava/lang/CharSequence;

    .line 4
    invoke-static {v6}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 5
    iput-object v6, v2, Ln3/a1$a;->b:Ljava/lang/CharSequence;

    .line 6
    invoke-static {v5}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 7
    iput-object v5, v2, Ln3/a1$a;->c:Ljava/lang/CharSequence;

    .line 8
    invoke-static {v4}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 9
    iput-object v4, v2, Ln3/a1$a;->d:Ljava/lang/CharSequence;

    .line 10
    invoke-static {v3}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 11
    iput-object v3, v2, Ln3/a1$a;->e:Ljava/lang/CharSequence;

    const/4 v3, 0x5

    .line 12
    invoke-static {v3}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 13
    iput-object v3, v2, Ln3/a1$a;->f:Ljava/lang/CharSequence;

    const/4 v3, 0x6

    .line 14
    invoke-static {v3}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 15
    iput-object v3, v2, Ln3/a1$a;->g:Ljava/lang/CharSequence;

    const/16 v3, 0xa

    .line 16
    invoke-static {v3}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    const/16 v4, 0x1d

    .line 17
    invoke-static {v4}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 18
    invoke-static {v4}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v6

    :goto_0
    if-nez v3, :cond_1

    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, [B

    :goto_1
    iput-object v6, v2, Ln3/a1$a;->j:[B

    .line 20
    iput-object v4, v2, Ln3/a1$a;->k:Ljava/lang/Integer;

    const/16 v3, 0xb

    .line 21
    invoke-static {v3}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 22
    iput-object v3, v2, Ln3/a1$a;->l:Landroid/net/Uri;

    const/16 v3, 0x16

    .line 23
    invoke-static {v3}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 24
    iput-object v3, v2, Ln3/a1$a;->w:Ljava/lang/CharSequence;

    const/16 v3, 0x17

    .line 25
    invoke-static {v3}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 26
    iput-object v3, v2, Ln3/a1$a;->x:Ljava/lang/CharSequence;

    const/16 v3, 0x18

    .line 27
    invoke-static {v3}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 28
    iput-object v3, v2, Ln3/a1$a;->y:Ljava/lang/CharSequence;

    const/16 v3, 0x1b

    .line 29
    invoke-static {v3}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 30
    iput-object v3, v2, Ln3/a1$a;->B:Ljava/lang/CharSequence;

    const/16 v3, 0x1c

    .line 31
    invoke-static {v3}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 32
    iput-object v3, v2, Ln3/a1$a;->C:Ljava/lang/CharSequence;

    const/16 v3, 0x1e

    .line 33
    invoke-static {v3}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 34
    iput-object v3, v2, Ln3/a1$a;->D:Ljava/lang/CharSequence;

    const/16 v3, 0x3e8

    .line 35
    invoke-static {v3}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 36
    iput-object v3, v2, Ln3/a1$a;->E:Landroid/os/Bundle;

    const/16 v3, 0x8

    .line 37
    invoke-static {v3}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 38
    invoke-static {v3}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 39
    sget-object v4, Ln3/r1;->h:Ly0/g;

    invoke-virtual {v4, v3}, Ly0/g;->d(Landroid/os/Bundle;)Ln3/h;

    move-result-object v3

    check-cast v3, Ln3/r1;

    .line 40
    iput-object v3, v2, Ln3/a1$a;->h:Ln3/r1;

    :cond_2
    const/16 v3, 0x9

    .line 41
    invoke-static {v3}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 42
    invoke-static {v3}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 43
    sget-object v4, Ln3/r1;->h:Ly0/g;

    invoke-virtual {v4, v3}, Ly0/g;->d(Landroid/os/Bundle;)Ln3/h;

    move-result-object v3

    check-cast v3, Ln3/r1;

    .line 44
    iput-object v3, v2, Ln3/a1$a;->i:Ln3/r1;

    :cond_3
    const/16 v3, 0xc

    .line 45
    invoke-static {v3}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 46
    invoke-static {v3}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 47
    iput-object v3, v2, Ln3/a1$a;->m:Ljava/lang/Integer;

    :cond_4
    const/16 v3, 0xd

    .line 48
    invoke-static {v3}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 49
    invoke-static {v3}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 50
    iput-object v3, v2, Ln3/a1$a;->n:Ljava/lang/Integer;

    :cond_5
    const/16 v3, 0xe

    .line 51
    invoke-static {v3}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 52
    invoke-static {v3}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 53
    iput-object v3, v2, Ln3/a1$a;->o:Ljava/lang/Integer;

    :cond_6
    const/16 v3, 0xf

    .line 54
    invoke-static {v3}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 55
    invoke-static {v3}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 56
    iput-object v3, v2, Ln3/a1$a;->p:Ljava/lang/Boolean;

    :cond_7
    const/16 v3, 0x10

    .line 57
    invoke-static {v3}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 58
    invoke-static {v3}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 59
    iput-object v3, v2, Ln3/a1$a;->q:Ljava/lang/Integer;

    :cond_8
    const/16 v3, 0x11

    .line 60
    invoke-static {v3}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 61
    invoke-static {v3}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 62
    iput-object v3, v2, Ln3/a1$a;->r:Ljava/lang/Integer;

    :cond_9
    const/16 v3, 0x12

    .line 63
    invoke-static {v3}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 64
    invoke-static {v3}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 65
    iput-object v3, v2, Ln3/a1$a;->s:Ljava/lang/Integer;

    :cond_a
    const/16 v3, 0x13

    .line 66
    invoke-static {v3}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 67
    invoke-static {v3}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 68
    iput-object v3, v2, Ln3/a1$a;->t:Ljava/lang/Integer;

    :cond_b
    const/16 v3, 0x14

    .line 69
    invoke-static {v3}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 70
    invoke-static {v3}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 71
    iput-object v3, v2, Ln3/a1$a;->u:Ljava/lang/Integer;

    :cond_c
    const/16 v3, 0x15

    .line 72
    invoke-static {v3}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 73
    invoke-static {v3}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 74
    iput-object v3, v2, Ln3/a1$a;->v:Ljava/lang/Integer;

    :cond_d
    const/16 v3, 0x19

    .line 75
    invoke-static {v3}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 76
    invoke-static {v3}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 77
    iput-object v3, v2, Ln3/a1$a;->z:Ljava/lang/Integer;

    :cond_e
    const/16 v3, 0x1a

    .line 78
    invoke-static {v3}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 79
    invoke-static {v3}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 80
    iput-object v1, v2, Ln3/a1$a;->A:Ljava/lang/Integer;

    .line 81
    :cond_f
    new-instance v1, Ln3/a1;

    invoke-direct {v1, v2}, Ln3/a1;-><init>(Ln3/a1$a;)V

    return-object v1

    .line 82
    :sswitch_1
    invoke-static {v7}, Ln3/o;->b(I)Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-virtual {v1, v2, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 84
    invoke-static {v6}, Ln3/o;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 85
    invoke-static {v5}, Ln3/o;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 86
    new-instance v4, Ln3/o;

    invoke-direct {v4, v2, v3, v1}, Ln3/o;-><init>(III)V

    return-object v4

    .line 87
    :goto_2
    invoke-static {v7}, Ln3/b2$b;->i(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 88
    invoke-static {v6}, Ln3/b2$b;->i(I)Ljava/lang/String;

    move-result-object v2

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 89
    invoke-static {v5}, Ln3/b2$b;->i(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 90
    invoke-static {v4}, Ln3/b2$b;->i(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    .line 91
    invoke-static {v3}, Ln3/b2$b;->i(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 92
    sget-object v2, Lq4/a;->p:Ln3/p;

    invoke-virtual {v2, v1}, Ln3/p;->d(Landroid/os/Bundle;)Ln3/h;

    move-result-object v1

    check-cast v1, Lq4/a;

    goto :goto_3

    .line 93
    :cond_10
    sget-object v1, Lq4/a;->n:Lq4/a;

    :goto_3
    move-object/from16 v16, v1

    .line 94
    new-instance v1, Ln3/b2$b;

    invoke-direct {v1}, Ln3/b2$b;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v8, v1

    .line 95
    invoke-virtual/range {v8 .. v17}, Ln3/b2$b;->j(Ljava/lang/Object;Ljava/lang/Object;IJJLq4/a;Z)Ln3/b2$b;

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x3 -> :sswitch_0
    .end sparse-switch
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Ln3/n;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Ln3/o1$c;

    sget v0, Ln3/k0;->m0:I

    .line 1
    new-instance v0, Ln3/q0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ln3/q0;-><init>(I)V

    const/16 v1, 0x3eb

    .line 2
    invoke-static {v0, v1}, Ln3/q;->d(Ljava/lang/RuntimeException;I)Ln3/q;

    move-result-object v0

    .line 3
    invoke-interface {p1, v0}, Ln3/o1$c;->i(Ln3/k1;)V

    return-void

    .line 4
    :goto_0
    check-cast p1, Ln3/o1$c;

    invoke-interface {p1}, Ln3/o1$c;->j()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
