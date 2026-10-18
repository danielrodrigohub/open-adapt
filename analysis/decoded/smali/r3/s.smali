.class public interface abstract Lr3/s;
.super Ljava/lang/Object;
.source "ExoMediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr3/s$d;,
        Lr3/s$a;,
        Lr3/s$b;,
        Lr3/s$c;
    }
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract b([BLjava/lang/String;)Z
.end method

.method public abstract c([B[B)V
.end method

.method public abstract d([B)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract e([B)V
.end method

.method public abstract f([B[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;,
            Landroid/media/DeniedByServerException;
        }
    .end annotation
.end method

.method public abstract g()Lr3/s$d;
.end method

.method public abstract h([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/DeniedByServerException;
        }
    .end annotation
.end method

.method public i([BLo3/v0;)V
    .locals 0

    return-void
.end method

.method public abstract j([BLjava/util/List;ILjava/util/HashMap;)Lr3/s$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Lr3/d$b;",
            ">;I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lr3/s$a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;
        }
    .end annotation
.end method

.method public abstract k(Lr3/s$b;)V
.end method

.method public abstract l()I
.end method

.method public abstract m([B)Lq3/b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCryptoException;
        }
    .end annotation
.end method

.method public abstract n()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaDrmException;
        }
    .end annotation
.end method
