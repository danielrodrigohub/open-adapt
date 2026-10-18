.class public Lj5/q;
.super Ljava/lang/Object;
.source "TrackSelectionParameters.java"

# interfaces
.implements Ln3/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj5/q$a;
    }
.end annotation


# static fields
.field public static final H:Lj5/q;


# instance fields
.field public final A:I

.field public final B:I

.field public final C:Z

.field public final D:Z

.field public final E:Z

.field public final F:Lu6/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/x<",
            "Lp4/t0;",
            "Lj5/p;",
            ">;"
        }
    .end annotation
.end field

.field public final G:Lu6/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/a0<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:Z

.field public final s:Lu6/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/v<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final t:I

.field public final u:Lu6/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/v<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final v:I

.field public final w:I

.field public final x:I

.field public final y:Lu6/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/v<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final z:Lu6/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/v<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lj5/q$a;

    invoke-direct {v0}, Lj5/q$a;-><init>()V

    .line 2
    new-instance v1, Lj5/q;

    invoke-direct {v1, v0}, Lj5/q;-><init>(Lj5/q$a;)V

    .line 3
    sput-object v1, Lj5/q;->H:Lj5/q;

    return-void
.end method

.method public constructor <init>(Lj5/q$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget v0, p1, Lj5/q$a;->a:I

    .line 3
    iput v0, p0, Lj5/q;->h:I

    .line 4
    iget v0, p1, Lj5/q$a;->b:I

    .line 5
    iput v0, p0, Lj5/q;->i:I

    .line 6
    iget v0, p1, Lj5/q$a;->c:I

    .line 7
    iput v0, p0, Lj5/q;->j:I

    .line 8
    iget v0, p1, Lj5/q$a;->d:I

    .line 9
    iput v0, p0, Lj5/q;->k:I

    .line 10
    iget v0, p1, Lj5/q$a;->e:I

    .line 11
    iput v0, p0, Lj5/q;->l:I

    .line 12
    iget v0, p1, Lj5/q$a;->f:I

    .line 13
    iput v0, p0, Lj5/q;->m:I

    .line 14
    iget v0, p1, Lj5/q$a;->g:I

    .line 15
    iput v0, p0, Lj5/q;->n:I

    .line 16
    iget v0, p1, Lj5/q$a;->h:I

    .line 17
    iput v0, p0, Lj5/q;->o:I

    .line 18
    iget v0, p1, Lj5/q$a;->i:I

    .line 19
    iput v0, p0, Lj5/q;->p:I

    .line 20
    iget v0, p1, Lj5/q$a;->j:I

    .line 21
    iput v0, p0, Lj5/q;->q:I

    .line 22
    iget-boolean v0, p1, Lj5/q$a;->k:Z

    .line 23
    iput-boolean v0, p0, Lj5/q;->r:Z

    .line 24
    iget-object v0, p1, Lj5/q$a;->l:Lu6/v;

    .line 25
    iput-object v0, p0, Lj5/q;->s:Lu6/v;

    .line 26
    iget v0, p1, Lj5/q$a;->m:I

    .line 27
    iput v0, p0, Lj5/q;->t:I

    .line 28
    iget-object v0, p1, Lj5/q$a;->n:Lu6/v;

    .line 29
    iput-object v0, p0, Lj5/q;->u:Lu6/v;

    .line 30
    iget v0, p1, Lj5/q$a;->o:I

    .line 31
    iput v0, p0, Lj5/q;->v:I

    .line 32
    iget v0, p1, Lj5/q$a;->p:I

    .line 33
    iput v0, p0, Lj5/q;->w:I

    .line 34
    iget v0, p1, Lj5/q$a;->q:I

    .line 35
    iput v0, p0, Lj5/q;->x:I

    .line 36
    iget-object v0, p1, Lj5/q$a;->r:Lu6/v;

    .line 37
    iput-object v0, p0, Lj5/q;->y:Lu6/v;

    .line 38
    iget-object v0, p1, Lj5/q$a;->s:Lu6/v;

    .line 39
    iput-object v0, p0, Lj5/q;->z:Lu6/v;

    .line 40
    iget v0, p1, Lj5/q$a;->t:I

    .line 41
    iput v0, p0, Lj5/q;->A:I

    .line 42
    iget v0, p1, Lj5/q$a;->u:I

    .line 43
    iput v0, p0, Lj5/q;->B:I

    .line 44
    iget-boolean v0, p1, Lj5/q$a;->v:Z

    .line 45
    iput-boolean v0, p0, Lj5/q;->C:Z

    .line 46
    iget-boolean v0, p1, Lj5/q$a;->w:Z

    .line 47
    iput-boolean v0, p0, Lj5/q;->D:Z

    .line 48
    iget-boolean v0, p1, Lj5/q$a;->x:Z

    .line 49
    iput-boolean v0, p0, Lj5/q;->E:Z

    .line 50
    iget-object v0, p1, Lj5/q$a;->y:Ljava/util/HashMap;

    .line 51
    invoke-static {v0}, Lu6/x;->a(Ljava/util/Map;)Lu6/x;

    move-result-object v0

    iput-object v0, p0, Lj5/q;->F:Lu6/x;

    .line 52
    iget-object p1, p1, Lj5/q$a;->z:Ljava/util/HashSet;

    .line 53
    invoke-static {p1}, Lu6/a0;->s(Ljava/util/Collection;)Lu6/a0;

    move-result-object p1

    iput-object p1, p0, Lj5/q;->G:Lu6/a0;

    return-void
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x6

    .line 2
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lj5/q;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x7

    .line 3
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lj5/q;->i:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x8

    .line 4
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lj5/q;->j:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x9

    .line 5
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lj5/q;->k:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0xa

    .line 6
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lj5/q;->l:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0xb

    .line 7
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lj5/q;->m:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0xc

    .line 8
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lj5/q;->n:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0xd

    .line 9
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lj5/q;->o:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0xe

    .line 10
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lj5/q;->p:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0xf

    .line 11
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lj5/q;->q:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x10

    .line 12
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lj5/q;->r:Z

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x11

    .line 14
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lj5/q;->s:Lu6/v;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    .line 15
    invoke-virtual {v2, v4}, Lu6/t;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v1, 0x19

    .line 17
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lj5/q;->t:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x1

    .line 18
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lj5/q;->u:Lu6/v;

    new-array v4, v3, [Ljava/lang/String;

    .line 19
    invoke-virtual {v2, v4}, Lu6/t;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 21
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lj5/q;->v:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x12

    .line 22
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lj5/q;->w:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x13

    .line 23
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lj5/q;->x:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x14

    .line 24
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lj5/q;->y:Lu6/v;

    new-array v4, v3, [Ljava/lang/String;

    .line 25
    invoke-virtual {v2, v4}, Lu6/t;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, 0x3

    .line 27
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lj5/q;->z:Lu6/v;

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lu6/t;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 29
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lj5/q;->A:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x1a

    .line 30
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lj5/q;->B:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x5

    .line 31
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lj5/q;->C:Z

    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x15

    .line 33
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lj5/q;->D:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x16

    .line 34
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lj5/q;->E:Z

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x17

    .line 36
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lj5/q;->F:Lu6/x;

    invoke-virtual {v2}, Lu6/x;->i()Lu6/t;

    move-result-object v2

    invoke-static {v2}, Lm5/b;->b(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/16 v1, 0x18

    .line 38
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lj5/q;->G:Lu6/a0;

    invoke-static {v2}, Lw6/a;->d(Ljava/util/Collection;)[I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 2
    :cond_1
    check-cast p1, Lj5/q;

    .line 3
    iget v2, p0, Lj5/q;->h:I

    iget v3, p1, Lj5/q;->h:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lj5/q;->i:I

    iget v3, p1, Lj5/q;->i:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lj5/q;->j:I

    iget v3, p1, Lj5/q;->j:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lj5/q;->k:I

    iget v3, p1, Lj5/q;->k:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lj5/q;->l:I

    iget v3, p1, Lj5/q;->l:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lj5/q;->m:I

    iget v3, p1, Lj5/q;->m:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lj5/q;->n:I

    iget v3, p1, Lj5/q;->n:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lj5/q;->o:I

    iget v3, p1, Lj5/q;->o:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lj5/q;->r:Z

    iget-boolean v3, p1, Lj5/q;->r:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lj5/q;->p:I

    iget v3, p1, Lj5/q;->p:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lj5/q;->q:I

    iget v3, p1, Lj5/q;->q:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lj5/q;->s:Lu6/v;

    iget-object v3, p1, Lj5/q;->s:Lu6/v;

    .line 4
    invoke-virtual {v2, v3}, Lu6/v;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lj5/q;->t:I

    iget v3, p1, Lj5/q;->t:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lj5/q;->u:Lu6/v;

    iget-object v3, p1, Lj5/q;->u:Lu6/v;

    .line 5
    invoke-virtual {v2, v3}, Lu6/v;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lj5/q;->v:I

    iget v3, p1, Lj5/q;->v:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lj5/q;->w:I

    iget v3, p1, Lj5/q;->w:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lj5/q;->x:I

    iget v3, p1, Lj5/q;->x:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lj5/q;->y:Lu6/v;

    iget-object v3, p1, Lj5/q;->y:Lu6/v;

    .line 6
    invoke-virtual {v2, v3}, Lu6/v;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lj5/q;->z:Lu6/v;

    iget-object v3, p1, Lj5/q;->z:Lu6/v;

    .line 7
    invoke-virtual {v2, v3}, Lu6/v;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lj5/q;->A:I

    iget v3, p1, Lj5/q;->A:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lj5/q;->B:I

    iget v3, p1, Lj5/q;->B:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lj5/q;->C:Z

    iget-boolean v3, p1, Lj5/q;->C:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lj5/q;->D:Z

    iget-boolean v3, p1, Lj5/q;->D:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lj5/q;->E:Z

    iget-boolean v3, p1, Lj5/q;->E:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lj5/q;->F:Lu6/x;

    iget-object v3, p1, Lj5/q;->F:Lu6/x;

    .line 8
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {v2, v3}, Lu6/h0;->a(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    iget-object v2, p0, Lj5/q;->G:Lu6/a0;

    iget-object p1, p1, Lj5/q;->G:Lu6/a0;

    .line 11
    invoke-virtual {v2, p1}, Lu6/a0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lj5/q;->h:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 2
    iget v2, p0, Lj5/q;->i:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 3
    iget v2, p0, Lj5/q;->j:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 4
    iget v2, p0, Lj5/q;->k:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 5
    iget v2, p0, Lj5/q;->l:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 6
    iget v2, p0, Lj5/q;->m:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 7
    iget v2, p0, Lj5/q;->n:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 8
    iget v2, p0, Lj5/q;->o:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 9
    iget-boolean v2, p0, Lj5/q;->r:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 10
    iget v2, p0, Lj5/q;->p:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 11
    iget v2, p0, Lj5/q;->q:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 12
    iget-object v2, p0, Lj5/q;->s:Lu6/v;

    invoke-virtual {v2}, Lu6/v;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    .line 13
    iget v0, p0, Lj5/q;->t:I

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    .line 14
    iget-object v0, p0, Lj5/q;->u:Lu6/v;

    invoke-virtual {v0}, Lu6/v;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 15
    iget v2, p0, Lj5/q;->v:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 16
    iget v2, p0, Lj5/q;->w:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 17
    iget v2, p0, Lj5/q;->x:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 18
    iget-object v2, p0, Lj5/q;->y:Lu6/v;

    invoke-virtual {v2}, Lu6/v;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    .line 19
    iget-object v0, p0, Lj5/q;->z:Lu6/v;

    invoke-virtual {v0}, Lu6/v;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 20
    iget v2, p0, Lj5/q;->A:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 21
    iget v2, p0, Lj5/q;->B:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 22
    iget-boolean v2, p0, Lj5/q;->C:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 23
    iget-boolean v2, p0, Lj5/q;->D:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 24
    iget-boolean v2, p0, Lj5/q;->E:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 25
    iget-object v2, p0, Lj5/q;->F:Lu6/x;

    invoke-virtual {v2}, Lu6/x;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    .line 26
    iget-object v0, p0, Lj5/q;->G:Lu6/a0;

    invoke-virtual {v0}, Lu6/a0;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    return v0
.end method
