.class public final Li2/y;
.super Ljava/lang/Object;
.source "PathParser.java"

# interfaces
.implements Li2/l0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li2/l0<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Li2/y;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Li2/y;

    invoke-direct {v0}, Li2/y;-><init>()V

    sput-object v0, Li2/y;->a:Li2/y;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lj2/c;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Li2/s;->b(Lj2/c;F)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method
