.class public final Lt1/l;
.super Ljava/lang/Object;
.source "WorkNameDao_Impl.java"

# interfaces
.implements Lt1/k;


# instance fields
.field public final a:Ly0/d0;

.field public final b:Lt1/l$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly0/q<",
            "Lt1/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ly0/d0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lt1/l;->a:Ly0/d0;

    .line 3
    new-instance v0, Lt1/l$a;

    invoke-direct {v0, p1}, Lt1/l$a;-><init>(Ly0/d0;)V

    iput-object v0, p0, Lt1/l;->b:Lt1/l$a;

    return-void
.end method
