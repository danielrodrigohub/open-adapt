.class public abstract Lea/p;
.super Ljava/lang/Object;
.source "AdaptKitPairedDevicesResult.kt"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field public final h:Lv9/a;

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lea/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lv9/a;Ljava/util/List;Lrd/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lea/p;->h:Lv9/a;

    .line 3
    iput-object p2, p0, Lea/p;->i:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Lv9/a;
    .locals 1

    iget-object v0, p0, Lea/p;->h:Lv9/a;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lea/m;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lea/p;->i:Ljava/util/List;

    return-object v0
.end method
