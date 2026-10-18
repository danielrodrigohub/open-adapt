.class public final Ly0/j;
.super Ljava/lang/Object;
.source "AutoClosingRoomOpenHelper.java"

# interfaces
.implements Ld1/d;
.implements Ly0/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly0/j$a;
    }
.end annotation


# instance fields
.field public final h:Ld1/d;

.field public final i:Ly0/j$a;


# virtual methods
.method public final X()Ld1/b;
    .locals 1

    .line 1
    iget-object v0, p0, Ly0/j;->i:Ly0/j$a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ly0/h;->c:Ly0/h;

    const/4 v0, 0x0

    throw v0
.end method

.method public final close()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Ly0/j;->i:Ly0/j$a;

    invoke-virtual {v0}, Ly0/j$a;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    throw v0
.end method

.method public final getDatabaseName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly0/j;->h:Ld1/d;

    invoke-interface {v0}, Ld1/d;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setWriteAheadLoggingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Ly0/j;->h:Ld1/d;

    invoke-interface {v0, p1}, Ld1/d;->setWriteAheadLoggingEnabled(Z)V

    return-void
.end method

.method public final x()Ld1/d;
    .locals 1

    iget-object v0, p0, Ly0/j;->h:Ld1/d;

    return-object v0
.end method
