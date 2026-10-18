.class public final Lh7/k;
.super Ljava/lang/Object;
.source "ObjectTypeAdapter.java"

# interfaces
.implements Le7/y;


# instance fields
.field public final synthetic h:Le7/v;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Le7/u;->h:Le7/u$a;

    iput-object v0, p0, Lh7/k;->h:Le7/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Le7/h;Ll7/a;)Le7/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le7/h;",
            "Ll7/a<",
            "TT;>;)",
            "Le7/x<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object p2, p2, Ll7/a;->a:Ljava/lang/Class;

    .line 2
    const-class v0, Ljava/lang/Object;

    if-ne p2, v0, :cond_0

    .line 3
    new-instance p2, Lh7/l;

    iget-object v0, p0, Lh7/k;->h:Le7/v;

    invoke-direct {p2, p1, v0}, Lh7/l;-><init>(Le7/h;Le7/v;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
