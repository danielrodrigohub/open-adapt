.class public final Lv4/b$a;
.super Ljava/lang/Object;
.source "DefaultHlsPlaylistTracker.java"

# interfaces
.implements Lv4/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic h:Lv4/b;


# direct methods
.method public constructor <init>(Lv4/b;)V
    .locals 0

    iput-object p1, p0, Lv4/b$a;->h:Lv4/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/net/Uri;Ll5/c0$c;Z)Z
    .locals 7

    .line 1
    iget-object p3, p0, Lv4/b$a;->h:Lv4/b;

    .line 2
    iget-object p3, p3, Lv4/b;->s:Lv4/e;

    const/4 v0, 0x0

    if-nez p3, :cond_2

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 4
    iget-object p3, p0, Lv4/b$a;->h:Lv4/b;

    .line 5
    iget-object p3, p3, Lv4/b;->q:Lv4/f;

    .line 6
    sget v3, Lm5/g0;->a:I

    iget-object p3, p3, Lv4/f;->e:Ljava/util/List;

    move v3, v0

    move v4, v3

    .line 7
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 8
    iget-object v5, p0, Lv4/b$a;->h:Lv4/b;

    .line 9
    iget-object v5, v5, Lv4/b;->k:Ljava/util/HashMap;

    .line 10
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv4/f$b;

    iget-object v6, v6, Lv4/f$b;->a:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv4/b$b;

    if-eqz v5, :cond_0

    .line 11
    iget-wide v5, v5, Lv4/b$b;->o:J

    cmp-long v5, v1, v5

    if-gez v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_1
    new-instance p3, Ll5/c0$a;

    iget-object v1, p0, Lv4/b$a;->h:Lv4/b;

    .line 13
    iget-object v1, v1, Lv4/b;->q:Lv4/f;

    .line 14
    iget-object v1, v1, Lv4/f;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p3, v2, v0, v1, v4}, Ll5/c0$a;-><init>(IIII)V

    .line 15
    iget-object v1, p0, Lv4/b$a;->h:Lv4/b;

    .line 16
    iget-object v1, v1, Lv4/b;->j:Ll5/c0;

    .line 17
    invoke-interface {v1, p3, p2}, Ll5/c0;->a(Ll5/c0$a;Ll5/c0$c;)Ll5/c0$b;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 18
    iget p3, p2, Ll5/c0$b;->a:I

    const/4 v1, 0x2

    if-ne p3, v1, :cond_2

    .line 19
    iget-object p3, p0, Lv4/b$a;->h:Lv4/b;

    .line 20
    iget-object p3, p3, Lv4/b;->k:Ljava/util/HashMap;

    .line 21
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv4/b$b;

    if-eqz p1, :cond_2

    .line 22
    iget-wide p2, p2, Ll5/c0$b;->b:J

    invoke-static {p1, p2, p3}, Lv4/b$b;->a(Lv4/b$b;J)Z

    :cond_2
    return v0
.end method

.method public final h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lv4/b$a;->h:Lv4/b;

    .line 2
    iget-object v0, v0, Lv4/b;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
