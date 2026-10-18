.class public abstract Leb/g;
.super Ljava/lang/Object;
.source "TelemetryType.kt"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;Lrd/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Leb/g;->a:I

    .line 3
    iput-object p2, p0, Leb/g;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Leb/g;->c:Ljava/util/Map;

    return-void
.end method
