.class public final Lp3/w$g;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"

# interfaces
.implements Lp3/w$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public final a:[Lp3/f;

.field public final b:Lp3/d0;

.field public final c:Lp3/f0;


# direct methods
.method public varargs constructor <init>([Lp3/f;)V
    .locals 5

    .line 1
    new-instance v0, Lp3/d0;

    invoke-direct {v0}, Lp3/d0;-><init>()V

    new-instance v1, Lp3/f0;

    invoke-direct {v1}, Lp3/f0;-><init>()V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    array-length v2, p1

    add-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Lp3/f;

    iput-object v2, p0, Lp3/w$g;->a:[Lp3/f;

    .line 4
    array-length v3, p1

    const/4 v4, 0x0

    invoke-static {p1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iput-object v0, p0, Lp3/w$g;->b:Lp3/d0;

    .line 6
    iput-object v1, p0, Lp3/w$g;->c:Lp3/f0;

    .line 7
    array-length v3, p1

    aput-object v0, v2, v3

    .line 8
    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    aput-object v1, v2, p1

    return-void
.end method
