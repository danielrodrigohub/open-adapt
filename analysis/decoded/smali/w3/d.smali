.class public abstract Lw3/d;
.super Ljava/lang/Object;
.source "TagPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw3/d$a;
    }
.end annotation


# instance fields
.field public final a:Ls3/w;


# direct methods
.method public constructor <init>(Ls3/w;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lw3/d;->a:Ls3/w;

    return-void
.end method


# virtual methods
.method public final a(Lm5/w;J)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/i1;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lw3/d;->b(Lm5/w;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lw3/d;->c(Lm5/w;J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract b(Lm5/w;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/i1;
        }
    .end annotation
.end method

.method public abstract c(Lm5/w;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/i1;
        }
    .end annotation
.end method
