.class public final Ln3/a1;
.super Ljava/lang/Object;
.source "MediaMetadata.java"

# interfaces
.implements Ln3/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/a1$a;
    }
.end annotation


# static fields
.field public static final N:Ln3/a1;

.field public static final O:Ln3/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/h$a<",
            "Ln3/a1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:Ljava/lang/Integer;

.field public final B:Ljava/lang/Integer;

.field public final C:Ljava/lang/Integer;

.field public final D:Ljava/lang/Integer;

.field public final E:Ljava/lang/CharSequence;

.field public final F:Ljava/lang/CharSequence;

.field public final G:Ljava/lang/CharSequence;

.field public final H:Ljava/lang/Integer;

.field public final I:Ljava/lang/Integer;

.field public final J:Ljava/lang/CharSequence;

.field public final K:Ljava/lang/CharSequence;

.field public final L:Ljava/lang/CharSequence;

.field public final M:Landroid/os/Bundle;

.field public final h:Ljava/lang/CharSequence;

.field public final i:Ljava/lang/CharSequence;

.field public final j:Ljava/lang/CharSequence;

.field public final k:Ljava/lang/CharSequence;

.field public final l:Ljava/lang/CharSequence;

.field public final m:Ljava/lang/CharSequence;

.field public final n:Ljava/lang/CharSequence;

.field public final o:Ln3/r1;

.field public final p:Ln3/r1;

.field public final q:[B

.field public final r:Ljava/lang/Integer;

.field public final s:Landroid/net/Uri;

.field public final t:Ljava/lang/Integer;

.field public final u:Ljava/lang/Integer;

.field public final v:Ljava/lang/Integer;

.field public final w:Ljava/lang/Boolean;

.field public final x:Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final y:Ljava/lang/Integer;

.field public final z:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ln3/a1$a;

    invoke-direct {v0}, Ln3/a1$a;-><init>()V

    .line 2
    new-instance v1, Ln3/a1;

    invoke-direct {v1, v0}, Ln3/a1;-><init>(Ln3/a1$a;)V

    .line 3
    sput-object v1, Ln3/a1;->N:Ln3/a1;

    .line 4
    sget-object v0, Ln3/n;->f:Ln3/n;

    sput-object v0, Ln3/a1;->O:Ln3/n;

    return-void
.end method

.method public constructor <init>(Ln3/a1$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Ln3/a1$a;->a:Ljava/lang/CharSequence;

    .line 3
    iput-object v0, p0, Ln3/a1;->h:Ljava/lang/CharSequence;

    .line 4
    iget-object v0, p1, Ln3/a1$a;->b:Ljava/lang/CharSequence;

    .line 5
    iput-object v0, p0, Ln3/a1;->i:Ljava/lang/CharSequence;

    .line 6
    iget-object v0, p1, Ln3/a1$a;->c:Ljava/lang/CharSequence;

    .line 7
    iput-object v0, p0, Ln3/a1;->j:Ljava/lang/CharSequence;

    .line 8
    iget-object v0, p1, Ln3/a1$a;->d:Ljava/lang/CharSequence;

    .line 9
    iput-object v0, p0, Ln3/a1;->k:Ljava/lang/CharSequence;

    .line 10
    iget-object v0, p1, Ln3/a1$a;->e:Ljava/lang/CharSequence;

    .line 11
    iput-object v0, p0, Ln3/a1;->l:Ljava/lang/CharSequence;

    .line 12
    iget-object v0, p1, Ln3/a1$a;->f:Ljava/lang/CharSequence;

    .line 13
    iput-object v0, p0, Ln3/a1;->m:Ljava/lang/CharSequence;

    .line 14
    iget-object v0, p1, Ln3/a1$a;->g:Ljava/lang/CharSequence;

    .line 15
    iput-object v0, p0, Ln3/a1;->n:Ljava/lang/CharSequence;

    .line 16
    iget-object v0, p1, Ln3/a1$a;->h:Ln3/r1;

    .line 17
    iput-object v0, p0, Ln3/a1;->o:Ln3/r1;

    .line 18
    iget-object v0, p1, Ln3/a1$a;->i:Ln3/r1;

    .line 19
    iput-object v0, p0, Ln3/a1;->p:Ln3/r1;

    .line 20
    iget-object v0, p1, Ln3/a1$a;->j:[B

    .line 21
    iput-object v0, p0, Ln3/a1;->q:[B

    .line 22
    iget-object v0, p1, Ln3/a1$a;->k:Ljava/lang/Integer;

    .line 23
    iput-object v0, p0, Ln3/a1;->r:Ljava/lang/Integer;

    .line 24
    iget-object v0, p1, Ln3/a1$a;->l:Landroid/net/Uri;

    .line 25
    iput-object v0, p0, Ln3/a1;->s:Landroid/net/Uri;

    .line 26
    iget-object v0, p1, Ln3/a1$a;->m:Ljava/lang/Integer;

    .line 27
    iput-object v0, p0, Ln3/a1;->t:Ljava/lang/Integer;

    .line 28
    iget-object v0, p1, Ln3/a1$a;->n:Ljava/lang/Integer;

    .line 29
    iput-object v0, p0, Ln3/a1;->u:Ljava/lang/Integer;

    .line 30
    iget-object v0, p1, Ln3/a1$a;->o:Ljava/lang/Integer;

    .line 31
    iput-object v0, p0, Ln3/a1;->v:Ljava/lang/Integer;

    .line 32
    iget-object v0, p1, Ln3/a1$a;->p:Ljava/lang/Boolean;

    .line 33
    iput-object v0, p0, Ln3/a1;->w:Ljava/lang/Boolean;

    .line 34
    iget-object v0, p1, Ln3/a1$a;->q:Ljava/lang/Integer;

    .line 35
    iput-object v0, p0, Ln3/a1;->x:Ljava/lang/Integer;

    .line 36
    iput-object v0, p0, Ln3/a1;->y:Ljava/lang/Integer;

    .line 37
    iget-object v0, p1, Ln3/a1$a;->r:Ljava/lang/Integer;

    .line 38
    iput-object v0, p0, Ln3/a1;->z:Ljava/lang/Integer;

    .line 39
    iget-object v0, p1, Ln3/a1$a;->s:Ljava/lang/Integer;

    .line 40
    iput-object v0, p0, Ln3/a1;->A:Ljava/lang/Integer;

    .line 41
    iget-object v0, p1, Ln3/a1$a;->t:Ljava/lang/Integer;

    .line 42
    iput-object v0, p0, Ln3/a1;->B:Ljava/lang/Integer;

    .line 43
    iget-object v0, p1, Ln3/a1$a;->u:Ljava/lang/Integer;

    .line 44
    iput-object v0, p0, Ln3/a1;->C:Ljava/lang/Integer;

    .line 45
    iget-object v0, p1, Ln3/a1$a;->v:Ljava/lang/Integer;

    .line 46
    iput-object v0, p0, Ln3/a1;->D:Ljava/lang/Integer;

    .line 47
    iget-object v0, p1, Ln3/a1$a;->w:Ljava/lang/CharSequence;

    .line 48
    iput-object v0, p0, Ln3/a1;->E:Ljava/lang/CharSequence;

    .line 49
    iget-object v0, p1, Ln3/a1$a;->x:Ljava/lang/CharSequence;

    .line 50
    iput-object v0, p0, Ln3/a1;->F:Ljava/lang/CharSequence;

    .line 51
    iget-object v0, p1, Ln3/a1$a;->y:Ljava/lang/CharSequence;

    .line 52
    iput-object v0, p0, Ln3/a1;->G:Ljava/lang/CharSequence;

    .line 53
    iget-object v0, p1, Ln3/a1$a;->z:Ljava/lang/Integer;

    .line 54
    iput-object v0, p0, Ln3/a1;->H:Ljava/lang/Integer;

    .line 55
    iget-object v0, p1, Ln3/a1$a;->A:Ljava/lang/Integer;

    .line 56
    iput-object v0, p0, Ln3/a1;->I:Ljava/lang/Integer;

    .line 57
    iget-object v0, p1, Ln3/a1$a;->B:Ljava/lang/CharSequence;

    .line 58
    iput-object v0, p0, Ln3/a1;->J:Ljava/lang/CharSequence;

    .line 59
    iget-object v0, p1, Ln3/a1$a;->C:Ljava/lang/CharSequence;

    .line 60
    iput-object v0, p0, Ln3/a1;->K:Ljava/lang/CharSequence;

    .line 61
    iget-object v0, p1, Ln3/a1$a;->D:Ljava/lang/CharSequence;

    .line 62
    iput-object v0, p0, Ln3/a1;->L:Ljava/lang/CharSequence;

    .line 63
    iget-object p1, p1, Ln3/a1$a;->E:Landroid/os/Bundle;

    .line 64
    iput-object p1, p0, Ln3/a1;->M:Landroid/os/Bundle;

    return-void
.end method

.method public static c(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/a1;->h:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/a1;->i:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    .line 4
    invoke-static {v1}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/a1;->j:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/4 v1, 0x3

    .line 5
    invoke-static {v1}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/a1;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/4 v1, 0x4

    .line 6
    invoke-static {v1}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/a1;->l:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/4 v1, 0x5

    .line 7
    invoke-static {v1}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/a1;->m:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/4 v1, 0x6

    .line 8
    invoke-static {v1}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/a1;->n:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/16 v1, 0xa

    .line 9
    invoke-static {v1}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/a1;->q:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/16 v1, 0xb

    .line 10
    invoke-static {v1}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/a1;->s:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 v1, 0x16

    .line 11
    invoke-static {v1}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/a1;->E:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/16 v1, 0x17

    .line 12
    invoke-static {v1}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/a1;->F:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/16 v1, 0x18

    .line 13
    invoke-static {v1}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/a1;->G:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/16 v1, 0x1b

    .line 14
    invoke-static {v1}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/a1;->J:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/16 v1, 0x1c

    .line 15
    invoke-static {v1}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/a1;->K:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/16 v1, 0x1e

    .line 16
    invoke-static {v1}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/a1;->L:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 17
    iget-object v1, p0, Ln3/a1;->o:Ln3/r1;

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    .line 18
    invoke-static {v1}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/a1;->o:Ln3/r1;

    invoke-interface {v2}, Ln3/h;->a()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 19
    :cond_0
    iget-object v1, p0, Ln3/a1;->p:Ln3/r1;

    if-eqz v1, :cond_1

    const/16 v1, 0x9

    .line 20
    invoke-static {v1}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/a1;->p:Ln3/r1;

    invoke-interface {v2}, Ln3/h;->a()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 21
    :cond_1
    iget-object v1, p0, Ln3/a1;->t:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    const/16 v1, 0xc

    .line 22
    invoke-static {v1}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/a1;->t:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 23
    :cond_2
    iget-object v1, p0, Ln3/a1;->u:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    const/16 v1, 0xd

    .line 24
    invoke-static {v1}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/a1;->u:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 25
    :cond_3
    iget-object v1, p0, Ln3/a1;->v:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    const/16 v1, 0xe

    .line 26
    invoke-static {v1}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/a1;->v:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 27
    :cond_4
    iget-object v1, p0, Ln3/a1;->w:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    const/16 v1, 0xf

    .line 28
    invoke-static {v1}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/a1;->w:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 29
    :cond_5
    iget-object v1, p0, Ln3/a1;->y:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    const/16 v1, 0x10

    .line 30
    invoke-static {v1}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/a1;->y:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 31
    :cond_6
    iget-object v1, p0, Ln3/a1;->z:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    const/16 v1, 0x11

    .line 32
    invoke-static {v1}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/a1;->z:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 33
    :cond_7
    iget-object v1, p0, Ln3/a1;->A:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    const/16 v1, 0x12

    .line 34
    invoke-static {v1}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/a1;->A:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 35
    :cond_8
    iget-object v1, p0, Ln3/a1;->B:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    const/16 v1, 0x13

    .line 36
    invoke-static {v1}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/a1;->B:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 37
    :cond_9
    iget-object v1, p0, Ln3/a1;->C:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    const/16 v1, 0x14

    .line 38
    invoke-static {v1}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/a1;->C:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 39
    :cond_a
    iget-object v1, p0, Ln3/a1;->D:Ljava/lang/Integer;

    if-eqz v1, :cond_b

    const/16 v1, 0x15

    .line 40
    invoke-static {v1}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/a1;->D:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 41
    :cond_b
    iget-object v1, p0, Ln3/a1;->H:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    const/16 v1, 0x19

    .line 42
    invoke-static {v1}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/a1;->H:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 43
    :cond_c
    iget-object v1, p0, Ln3/a1;->I:Ljava/lang/Integer;

    if-eqz v1, :cond_d

    const/16 v1, 0x1a

    .line 44
    invoke-static {v1}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/a1;->I:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 45
    :cond_d
    iget-object v1, p0, Ln3/a1;->r:Ljava/lang/Integer;

    if-eqz v1, :cond_e

    const/16 v1, 0x1d

    .line 46
    invoke-static {v1}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/a1;->r:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 47
    :cond_e
    iget-object v1, p0, Ln3/a1;->M:Landroid/os/Bundle;

    if-eqz v1, :cond_f

    const/16 v1, 0x3e8

    .line 48
    invoke-static {v1}, Ln3/a1;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/a1;->M:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_f
    return-object v0
.end method

.method public final b()Ln3/a1$a;
    .locals 1

    new-instance v0, Ln3/a1$a;

    invoke-direct {v0, p0}, Ln3/a1$a;-><init>(Ln3/a1;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Ln3/a1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 2
    :cond_1
    check-cast p1, Ln3/a1;

    .line 3
    iget-object v2, p0, Ln3/a1;->h:Ljava/lang/CharSequence;

    iget-object v3, p1, Ln3/a1;->h:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ln3/a1;->i:Ljava/lang/CharSequence;

    iget-object v3, p1, Ln3/a1;->i:Ljava/lang/CharSequence;

    .line 4
    invoke-static {v2, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ln3/a1;->j:Ljava/lang/CharSequence;

    iget-object v3, p1, Ln3/a1;->j:Ljava/lang/CharSequence;

    .line 5
    invoke-static {v2, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ln3/a1;->k:Ljava/lang/CharSequence;

    iget-object v3, p1, Ln3/a1;->k:Ljava/lang/CharSequence;

    .line 6
    invoke-static {v2, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ln3/a1;->l:Ljava/lang/CharSequence;

    iget-object v3, p1, Ln3/a1;->l:Ljava/lang/CharSequence;

    .line 7
    invoke-static {v2, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ln3/a1;->m:Ljava/lang/CharSequence;

    iget-object v3, p1, Ln3/a1;->m:Ljava/lang/CharSequence;

    .line 8
    invoke-static {v2, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ln3/a1;->n:Ljava/lang/CharSequence;

    iget-object v3, p1, Ln3/a1;->n:Ljava/lang/CharSequence;

    .line 9
    invoke-static {v2, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ln3/a1;->o:Ln3/r1;

    iget-object v3, p1, Ln3/a1;->o:Ln3/r1;

    .line 10
    invoke-static {v2, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ln3/a1;->p:Ln3/r1;

    iget-object v3, p1, Ln3/a1;->p:Ln3/r1;

    .line 11
    invoke-static {v2, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ln3/a1;->q:[B

    iget-object v3, p1, Ln3/a1;->q:[B

    .line 12
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ln3/a1;->r:Ljava/lang/Integer;

    iget-object v3, p1, Ln3/a1;->r:Ljava/lang/Integer;

    .line 13
    invoke-static {v2, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ln3/a1;->s:Landroid/net/Uri;

    iget-object v3, p1, Ln3/a1;->s:Landroid/net/Uri;

    .line 14
    invoke-static {v2, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ln3/a1;->t:Ljava/lang/Integer;

    iget-object v3, p1, Ln3/a1;->t:Ljava/lang/Integer;

    .line 15
    invoke-static {v2, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ln3/a1;->u:Ljava/lang/Integer;

    iget-object v3, p1, Ln3/a1;->u:Ljava/lang/Integer;

    .line 16
    invoke-static {v2, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ln3/a1;->v:Ljava/lang/Integer;

    iget-object v3, p1, Ln3/a1;->v:Ljava/lang/Integer;

    .line 17
    invoke-static {v2, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ln3/a1;->w:Ljava/lang/Boolean;

    iget-object v3, p1, Ln3/a1;->w:Ljava/lang/Boolean;

    .line 18
    invoke-static {v2, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ln3/a1;->y:Ljava/lang/Integer;

    iget-object v3, p1, Ln3/a1;->y:Ljava/lang/Integer;

    .line 19
    invoke-static {v2, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ln3/a1;->z:Ljava/lang/Integer;

    iget-object v3, p1, Ln3/a1;->z:Ljava/lang/Integer;

    .line 20
    invoke-static {v2, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ln3/a1;->A:Ljava/lang/Integer;

    iget-object v3, p1, Ln3/a1;->A:Ljava/lang/Integer;

    .line 21
    invoke-static {v2, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ln3/a1;->B:Ljava/lang/Integer;

    iget-object v3, p1, Ln3/a1;->B:Ljava/lang/Integer;

    .line 22
    invoke-static {v2, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ln3/a1;->C:Ljava/lang/Integer;

    iget-object v3, p1, Ln3/a1;->C:Ljava/lang/Integer;

    .line 23
    invoke-static {v2, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ln3/a1;->D:Ljava/lang/Integer;

    iget-object v3, p1, Ln3/a1;->D:Ljava/lang/Integer;

    .line 24
    invoke-static {v2, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ln3/a1;->E:Ljava/lang/CharSequence;

    iget-object v3, p1, Ln3/a1;->E:Ljava/lang/CharSequence;

    .line 25
    invoke-static {v2, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ln3/a1;->F:Ljava/lang/CharSequence;

    iget-object v3, p1, Ln3/a1;->F:Ljava/lang/CharSequence;

    .line 26
    invoke-static {v2, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ln3/a1;->G:Ljava/lang/CharSequence;

    iget-object v3, p1, Ln3/a1;->G:Ljava/lang/CharSequence;

    .line 27
    invoke-static {v2, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ln3/a1;->H:Ljava/lang/Integer;

    iget-object v3, p1, Ln3/a1;->H:Ljava/lang/Integer;

    .line 28
    invoke-static {v2, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ln3/a1;->I:Ljava/lang/Integer;

    iget-object v3, p1, Ln3/a1;->I:Ljava/lang/Integer;

    .line 29
    invoke-static {v2, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ln3/a1;->J:Ljava/lang/CharSequence;

    iget-object v3, p1, Ln3/a1;->J:Ljava/lang/CharSequence;

    .line 30
    invoke-static {v2, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ln3/a1;->K:Ljava/lang/CharSequence;

    iget-object v3, p1, Ln3/a1;->K:Ljava/lang/CharSequence;

    .line 31
    invoke-static {v2, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ln3/a1;->L:Ljava/lang/CharSequence;

    iget-object p1, p1, Ln3/a1;->L:Ljava/lang/CharSequence;

    .line 32
    invoke-static {v2, p1}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

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

.method public final hashCode()I
    .locals 3

    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Ln3/a1;->h:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Ln3/a1;->i:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Ln3/a1;->j:Ljava/lang/CharSequence;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Ln3/a1;->k:Ljava/lang/CharSequence;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Ln3/a1;->l:Ljava/lang/CharSequence;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Ln3/a1;->m:Ljava/lang/CharSequence;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Ln3/a1;->n:Ljava/lang/CharSequence;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Ln3/a1;->o:Ln3/r1;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Ln3/a1;->p:Ln3/r1;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Ln3/a1;->q:[B

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Ln3/a1;->r:Ljava/lang/Integer;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Ln3/a1;->s:Landroid/net/Uri;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-object v1, p0, Ln3/a1;->t:Ljava/lang/Integer;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object v1, p0, Ln3/a1;->u:Ljava/lang/Integer;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-object v1, p0, Ln3/a1;->v:Ljava/lang/Integer;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-object v1, p0, Ln3/a1;->w:Ljava/lang/Boolean;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget-object v1, p0, Ln3/a1;->y:Ljava/lang/Integer;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget-object v1, p0, Ln3/a1;->z:Ljava/lang/Integer;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iget-object v1, p0, Ln3/a1;->A:Ljava/lang/Integer;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    iget-object v1, p0, Ln3/a1;->B:Ljava/lang/Integer;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    iget-object v1, p0, Ln3/a1;->C:Ljava/lang/Integer;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    iget-object v1, p0, Ln3/a1;->D:Ljava/lang/Integer;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    iget-object v1, p0, Ln3/a1;->E:Ljava/lang/CharSequence;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    iget-object v1, p0, Ln3/a1;->F:Ljava/lang/CharSequence;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    iget-object v1, p0, Ln3/a1;->G:Ljava/lang/CharSequence;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    iget-object v1, p0, Ln3/a1;->H:Ljava/lang/Integer;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    iget-object v1, p0, Ln3/a1;->I:Ljava/lang/Integer;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    iget-object v1, p0, Ln3/a1;->J:Ljava/lang/CharSequence;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    iget-object v1, p0, Ln3/a1;->K:Ljava/lang/CharSequence;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    iget-object v1, p0, Ln3/a1;->L:Ljava/lang/CharSequence;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
