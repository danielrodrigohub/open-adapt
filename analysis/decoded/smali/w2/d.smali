.class public final Lw2/d;
.super Ljava/lang/Object;
.source "QMediaStoreUriLoader.java"

# interfaces
.implements Lv2/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw2/d$a;,
        Lw2/d$b;,
        Lw2/d$c;,
        Lw2/d$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lv2/n<",
        "Landroid/net/Uri;",
        "TDataT;>;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lv2/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv2/n<",
            "Ljava/io/File;",
            "TDataT;>;"
        }
    .end annotation
.end field

.field public final c:Lv2/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv2/n<",
            "Landroid/net/Uri;",
            "TDataT;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TDataT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lv2/n;Lv2/n;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lv2/n<",
            "Ljava/io/File;",
            "TDataT;>;",
            "Lv2/n<",
            "Landroid/net/Uri;",
            "TDataT;>;",
            "Ljava/lang/Class<",
            "TDataT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lw2/d;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lw2/d;->b:Lv2/n;

    .line 4
    iput-object p3, p0, Lw2/d;->c:Lv2/n;

    .line 5
    iput-object p4, p0, Lw2/d;->d:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILp2/h;)Lv2/n$a;
    .locals 11

    .line 1
    move-object v4, p1

    check-cast v4, Landroid/net/Uri;

    .line 2
    new-instance p1, Lv2/n$a;

    new-instance v9, Lk3/d;

    invoke-direct {v9, v4}, Lk3/d;-><init>(Ljava/lang/Object;)V

    new-instance v10, Lw2/d$d;

    iget-object v1, p0, Lw2/d;->a:Landroid/content/Context;

    iget-object v2, p0, Lw2/d;->b:Lv2/n;

    iget-object v3, p0, Lw2/d;->c:Lv2/n;

    iget-object v8, p0, Lw2/d;->d:Ljava/lang/Class;

    move-object v0, v10

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Lw2/d$d;-><init>(Landroid/content/Context;Lv2/n;Lv2/n;Landroid/net/Uri;IILp2/h;Ljava/lang/Class;)V

    invoke-direct {p1, v9, v10}, Lv2/n$a;-><init>(Lp2/f;Lcom/bumptech/glide/load/data/d;)V

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    check-cast p1, Landroid/net/Uri;

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Lf1/b;->j(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
