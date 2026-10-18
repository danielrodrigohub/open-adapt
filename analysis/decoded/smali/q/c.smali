.class public final Lq/c;
.super Ljava/lang/Object;
.source "Cache.java"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lq/e;

    invoke-direct {v0}, Lq/e;-><init>()V

    iput-object v0, p0, Lq/c;->a:Ljava/lang/Object;

    .line 8
    new-instance v0, Lq/e;

    invoke-direct {v0}, Lq/e;-><init>()V

    iput-object v0, p0, Lq/c;->b:Ljava/lang/Object;

    .line 9
    new-instance v0, Lq/e;

    invoke-direct {v0}, Lq/e;-><init>()V

    iput-object v0, p0, Lq/c;->c:Ljava/lang/Object;

    const/16 v0, 0x20

    new-array v0, v0, [Lq/h;

    .line 10
    iput-object v0, p0, Lq/c;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Le2/a;Le2/a;Le2/b;Le2/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lq/c;->a:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lq/c;->b:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lq/c;->c:Ljava/lang/Object;

    .line 5
    iput-object p4, p0, Lq/c;->d:Ljava/lang/Object;

    return-void
.end method
