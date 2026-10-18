.class public Lj5/q$a;
.super Ljava/lang/Object;
.source "TrackSelectionParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj5/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Z

.field public l:Lu6/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/v<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public m:I

.field public n:Lu6/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/v<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public o:I

.field public p:I

.field public q:I

.field public r:Lu6/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/v<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public s:Lu6/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/v<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public t:I

.field public u:I

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lp4/t0;",
            "Lj5/p;",
            ">;"
        }
    .end annotation
.end field

.field public z:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Lj5/q$a;->a:I

    .line 3
    iput v0, p0, Lj5/q$a;->b:I

    .line 4
    iput v0, p0, Lj5/q$a;->c:I

    .line 5
    iput v0, p0, Lj5/q$a;->d:I

    .line 6
    iput v0, p0, Lj5/q$a;->i:I

    .line 7
    iput v0, p0, Lj5/q$a;->j:I

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lj5/q$a;->k:Z

    .line 9
    sget-object v1, Lu6/v;->i:Lu6/v$b;

    .line 10
    sget-object v1, Lu6/p0;->l:Lu6/p0;

    .line 11
    iput-object v1, p0, Lj5/q$a;->l:Lu6/v;

    const/4 v2, 0x0

    .line 12
    iput v2, p0, Lj5/q$a;->m:I

    .line 13
    iput-object v1, p0, Lj5/q$a;->n:Lu6/v;

    .line 14
    iput v2, p0, Lj5/q$a;->o:I

    .line 15
    iput v0, p0, Lj5/q$a;->p:I

    .line 16
    iput v0, p0, Lj5/q$a;->q:I

    .line 17
    iput-object v1, p0, Lj5/q$a;->r:Lu6/v;

    .line 18
    iput-object v1, p0, Lj5/q$a;->s:Lu6/v;

    .line 19
    iput v2, p0, Lj5/q$a;->t:I

    .line 20
    iput v2, p0, Lj5/q$a;->u:I

    .line 21
    iput-boolean v2, p0, Lj5/q$a;->v:Z

    .line 22
    iput-boolean v2, p0, Lj5/q$a;->w:Z

    .line 23
    iput-boolean v2, p0, Lj5/q$a;->x:Z

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lj5/q$a;->y:Ljava/util/HashMap;

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lj5/q$a;->z:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 6

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    .line 27
    invoke-static {v0}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lj5/q;->H:Lj5/q;

    iget v2, v1, Lj5/q;->h:I

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lj5/q$a;->a:I

    const/4 v0, 0x7

    .line 28
    invoke-static {v0}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lj5/q;->i:I

    .line 29
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lj5/q$a;->b:I

    const/16 v0, 0x8

    .line 30
    invoke-static {v0}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lj5/q;->j:I

    .line 31
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lj5/q$a;->c:I

    const/16 v0, 0x9

    .line 32
    invoke-static {v0}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lj5/q;->k:I

    .line 33
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lj5/q$a;->d:I

    const/16 v0, 0xa

    .line 34
    invoke-static {v0}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lj5/q;->l:I

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lj5/q$a;->e:I

    const/16 v0, 0xb

    .line 35
    invoke-static {v0}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lj5/q;->m:I

    .line 36
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lj5/q$a;->f:I

    const/16 v0, 0xc

    .line 37
    invoke-static {v0}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lj5/q;->n:I

    .line 38
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lj5/q$a;->g:I

    const/16 v0, 0xd

    .line 39
    invoke-static {v0}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lj5/q;->o:I

    .line 40
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lj5/q$a;->h:I

    const/16 v0, 0xe

    .line 41
    invoke-static {v0}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lj5/q;->p:I

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lj5/q$a;->i:I

    const/16 v0, 0xf

    .line 42
    invoke-static {v0}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lj5/q;->q:I

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lj5/q$a;->j:I

    const/16 v0, 0x10

    .line 43
    invoke-static {v0}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, v1, Lj5/q;->r:Z

    .line 44
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lj5/q$a;->k:Z

    const/16 v0, 0x11

    .line 45
    invoke-static {v0}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v3

    .line 46
    :goto_0
    invoke-static {v0}, Lu6/v;->t([Ljava/lang/Object;)Lu6/v;

    move-result-object v0

    iput-object v0, p0, Lj5/q$a;->l:Lu6/v;

    const/16 v0, 0x19

    .line 47
    invoke-static {v0}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v0

    iget v3, v1, Lj5/q;->t:I

    .line 48
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lj5/q$a;->m:I

    const/4 v0, 0x1

    .line 49
    invoke-static {v0}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v3

    .line 50
    :goto_1
    invoke-static {v0}, Lj5/q$a;->a([Ljava/lang/String;)Lu6/v;

    move-result-object v0

    iput-object v0, p0, Lj5/q$a;->n:Lu6/v;

    const/4 v0, 0x2

    .line 51
    invoke-static {v0}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v0

    iget v3, v1, Lj5/q;->v:I

    .line 52
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lj5/q$a;->o:I

    const/16 v0, 0x12

    .line 53
    invoke-static {v0}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v0

    iget v3, v1, Lj5/q;->w:I

    .line 54
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lj5/q$a;->p:I

    const/16 v0, 0x13

    .line 55
    invoke-static {v0}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v0

    iget v3, v1, Lj5/q;->x:I

    .line 56
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lj5/q$a;->q:I

    const/16 v0, 0x14

    .line 57
    invoke-static {v0}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/String;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, v3

    .line 58
    :goto_2
    invoke-static {v0}, Lu6/v;->t([Ljava/lang/Object;)Lu6/v;

    move-result-object v0

    iput-object v0, p0, Lj5/q$a;->r:Lu6/v;

    const/4 v0, 0x3

    .line 59
    invoke-static {v0}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/String;

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move-object v0, v3

    .line 60
    :goto_3
    invoke-static {v0}, Lj5/q$a;->a([Ljava/lang/String;)Lu6/v;

    move-result-object v0

    iput-object v0, p0, Lj5/q$a;->s:Lu6/v;

    const/4 v0, 0x4

    .line 61
    invoke-static {v0}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v0

    iget v3, v1, Lj5/q;->A:I

    .line 62
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lj5/q$a;->t:I

    const/16 v0, 0x1a

    .line 63
    invoke-static {v0}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v0

    iget v3, v1, Lj5/q;->B:I

    .line 64
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lj5/q$a;->u:I

    const/4 v0, 0x5

    .line 65
    invoke-static {v0}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, v1, Lj5/q;->C:Z

    .line 66
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lj5/q$a;->v:Z

    const/16 v0, 0x15

    .line 67
    invoke-static {v0}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, v1, Lj5/q;->D:Z

    .line 68
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lj5/q$a;->w:Z

    const/16 v0, 0x16

    .line 69
    invoke-static {v0}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, v1, Lj5/q;->E:Z

    .line 70
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lj5/q$a;->x:Z

    const/16 v0, 0x17

    .line 71
    invoke-static {v0}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_4

    .line 72
    sget-object v0, Lu6/p0;->l:Lu6/p0;

    goto :goto_4

    .line 73
    :cond_4
    sget-object v1, Lj5/p;->j:Ln3/p;

    invoke-static {v1, v0}, Lm5/b;->a(Ln3/h$a;Ljava/util/List;)Lu6/v;

    move-result-object v0

    .line 74
    :goto_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lj5/q$a;->y:Ljava/util/HashMap;

    move v1, v2

    .line 75
    :goto_5
    move-object v3, v0

    check-cast v3, Lu6/p0;

    .line 76
    iget v3, v3, Lu6/p0;->k:I

    if-ge v1, v3, :cond_5

    .line 77
    move-object v3, v0

    check-cast v3, Lu6/p0;

    invoke-virtual {v3, v1}, Lu6/p0;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj5/p;

    .line 78
    iget-object v4, p0, Lj5/q$a;->y:Ljava/util/HashMap;

    iget-object v5, v3, Lj5/p;->h:Lp4/t0;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    const/16 v0, 0x18

    .line 79
    invoke-static {v0}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    new-array v0, v2, [I

    if-eqz p1, :cond_6

    goto :goto_6

    :cond_6
    move-object p1, v0

    .line 80
    :goto_6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lj5/q$a;->z:Ljava/util/HashSet;

    .line 81
    array-length v0, p1

    :goto_7
    if-ge v2, v0, :cond_7

    aget v1, p1, v2

    .line 82
    iget-object v3, p0, Lj5/q$a;->z:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_7
    return-void
.end method

.method public static a([Ljava/lang/String;)Lu6/v;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lu6/v<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lu6/v;->i:Lu6/v$b;

    const/4 v0, 0x4

    const-string v1, "initialCapacity"

    .line 2
    invoke-static {v0, v1}, Lu6/h;->b(ILjava/lang/String;)I

    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, p0, v2

    .line 4
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {v4}, Lm5/g0;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v3, 0x1

    .line 7
    array-length v6, v0

    if-ge v6, v5, :cond_0

    .line 8
    array-length v6, v0

    .line 9
    invoke-static {v6, v5}, Lu6/t$b;->a(II)I

    move-result v6

    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 10
    :cond_0
    aput-object v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {v0, v3}, Lu6/v;->q([Ljava/lang/Object;I)Lu6/v;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b(Landroid/content/Context;)Lj5/q$a;
    .locals 2

    .line 1
    sget v0, Lm5/g0;->a:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_3

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "captioning"

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x440

    .line 5
    iput v1, p0, Lj5/q$a;->t:I

    .line 6
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object p1

    if-eqz p1, :cond_3

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 7
    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    :goto_0
    invoke-static {p1}, Lu6/v;->v(Ljava/lang/Object;)Lu6/v;

    move-result-object p1

    iput-object p1, p0, Lj5/q$a;->s:Lu6/v;

    :cond_3
    :goto_1
    return-object p0
.end method

.method public c(II)Lj5/q$a;
    .locals 0

    .line 1
    iput p1, p0, Lj5/q$a;->i:I

    .line 2
    iput p2, p0, Lj5/q$a;->j:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lj5/q$a;->k:Z

    return-object p0
.end method

.method public d(Landroid/content/Context;)Lj5/q$a;
    .locals 7

    .line 1
    sget v0, Lm5/g0;->a:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_0

    const-string v3, "display"

    .line 2
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {v3, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    const-string v3, "window"

    .line 4
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 5
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 7
    :cond_1
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    if-nez v4, :cond_5

    invoke-static {p1}, Lm5/g0;->K(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x1c

    if-ge v0, v4, :cond_2

    const-string v0, "sys.display-size"

    .line 8
    invoke-static {v0}, Lm5/g0;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, "vendor.display-size"

    .line 9
    invoke-static {v0}, Lm5/g0;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 11
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "x"

    const/4 v6, -0x1

    .line 12
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 13
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 14
    aget-object v1, v4, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v5, 0x1

    .line 15
    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lez v1, :cond_3

    if-lez v4, :cond_3

    .line 16
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v1, v4}, Landroid/graphics/Point;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 17
    :catch_0
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid display size: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Util"

    invoke-static {v1, v0}, Lm5/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_4
    sget-object v0, Lm5/g0;->c:Ljava/lang/String;

    const-string v1, "Sony"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lm5/g0;->d:Ljava/lang/String;

    const-string v1, "BRAVIA"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.sony.dtv.hardware.panel.qfhd"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 21
    new-instance v5, Landroid/graphics/Point;

    const/16 p1, 0xf00

    const/16 v0, 0x870

    invoke-direct {v5, p1, v0}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_2

    .line 22
    :cond_5
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 23
    sget p1, Lm5/g0;->a:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_6

    .line 24
    invoke-virtual {v3}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v0

    iput v0, v5, Landroid/graphics/Point;->x:I

    .line 26
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result p1

    iput p1, v5, Landroid/graphics/Point;->y:I

    goto :goto_2

    :cond_6
    if-lt p1, v2, :cond_7

    .line 27
    invoke-virtual {v3, v5}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_2

    .line 28
    :cond_7
    invoke-virtual {v3, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 29
    :goto_2
    iget p1, v5, Landroid/graphics/Point;->x:I

    iget v0, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, v0}, Lj5/q$a;->c(II)Lj5/q$a;

    move-result-object p1

    return-object p1
.end method
