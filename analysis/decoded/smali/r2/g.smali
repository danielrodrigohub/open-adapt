.class public final Lr2/g;
.super Ljava/lang/Object;
.source "DataCacheWriter.java"

# interfaces
.implements Lt2/a$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lt2/a$b;"
    }
.end annotation


# instance fields
.field public final a:Lp2/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp2/d<",
            "TDataType;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataType;"
        }
    .end annotation
.end field

.field public final c:Lp2/h;


# direct methods
.method public constructor <init>(Lp2/d;Ljava/lang/Object;Lp2/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp2/d<",
            "TDataType;>;TDataType;",
            "Lp2/h;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lr2/g;->a:Lp2/d;

    .line 3
    iput-object p2, p0, Lr2/g;->b:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lr2/g;->c:Lp2/h;

    return-void
.end method
