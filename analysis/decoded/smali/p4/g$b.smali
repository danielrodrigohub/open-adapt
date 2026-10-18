.class public final Lp4/g$b;
.super Ljava/lang/Object;
.source "CompositeMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp4/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lp4/x;

.field public final b:Lp4/x$c;

.field public final c:Lp4/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp4/g<",
            "TT;>.a;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp4/x;Lp4/x$c;Lp4/g$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp4/x;",
            "Lp4/x$c;",
            "Lp4/g<",
            "TT;>.a;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp4/g$b;->a:Lp4/x;

    .line 3
    iput-object p2, p0, Lp4/g$b;->b:Lp4/x$c;

    .line 4
    iput-object p3, p0, Lp4/g$b;->c:Lp4/g$a;

    return-void
.end method
