.class public final Lh7/i;
.super Ljava/lang/Object;
.source "NumberTypeAdapter.java"

# interfaces
.implements Le7/y;


# instance fields
.field public final synthetic h:Lh7/j;


# direct methods
.method public constructor <init>(Lh7/j;)V
    .locals 0

    iput-object p1, p0, Lh7/i;->h:Lh7/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Le7/h;Ll7/a;)Le7/x;
    .locals 0
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
    iget-object p1, p2, Ll7/a;->a:Ljava/lang/Class;

    .line 2
    const-class p2, Ljava/lang/Number;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lh7/i;->h:Lh7/j;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
