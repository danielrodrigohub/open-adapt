.class public final Lw2/a;
.super Ljava/lang/Object;
.source "HttpGlideUrlLoader.java"

# interfaces
.implements Lv2/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw2/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv2/n<",
        "Lv2/f;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lp2/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp2/g<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lv2/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv2/m<",
            "Lv2/f;",
            "Lv2/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9c4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout"

    invoke-static {v1, v0}, Lp2/g;->a(Ljava/lang/String;Ljava/lang/Object;)Lp2/g;

    move-result-object v0

    sput-object v0, Lw2/a;->b:Lp2/g;

    return-void
.end method

.method public constructor <init>(Lv2/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv2/m<",
            "Lv2/f;",
            "Lv2/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lw2/a;->a:Lv2/m;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILp2/h;)Lv2/n$a;
    .locals 1

    .line 1
    check-cast p1, Lv2/f;

    .line 2
    iget-object p2, p0, Lw2/a;->a:Lv2/m;

    if-eqz p2, :cond_1

    .line 3
    invoke-static {p1}, Lv2/m$a;->a(Ljava/lang/Object;)Lv2/m$a;

    move-result-object p3

    .line 4
    iget-object p2, p2, Lv2/m;->a:Lv2/l;

    invoke-virtual {p2, p3}, Ll3/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 5
    sget-object v0, Lv2/m$a;->d:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 6
    :try_start_0
    invoke-virtual {v0, p3}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    check-cast p2, Lv2/f;

    if-nez p2, :cond_0

    .line 9
    iget-object p2, p0, Lw2/a;->a:Lv2/m;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {p1}, Lv2/m$a;->a(Ljava/lang/Object;)Lv2/m$a;

    move-result-object p3

    .line 11
    iget-object p2, p2, Lv2/m;->a:Lv2/l;

    invoke-virtual {p2, p3, p1}, Ll3/i;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object p1, p2

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 13
    :cond_1
    :goto_0
    sget-object p2, Lw2/a;->b:Lp2/g;

    invoke-virtual {p4, p2}, Lp2/h;->c(Lp2/g;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 14
    new-instance p3, Lv2/n$a;

    new-instance p4, Lcom/bumptech/glide/load/data/j;

    invoke-direct {p4, p1, p2}, Lcom/bumptech/glide/load/data/j;-><init>(Lv2/f;I)V

    invoke-direct {p3, p1, p4}, Lv2/n$a;-><init>(Lp2/f;Lcom/bumptech/glide/load/data/d;)V

    return-object p3
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lv2/f;

    const/4 p1, 0x1

    return p1
.end method
