.class public abstract Lv9/m;
.super Ljava/lang/Throwable;
.source "AdaptKitError.kt"

# interfaces
.implements Landroid/os/Parcelable;
.implements Leb/d;


# instance fields
.field public final h:Lv9/a;


# direct methods
.method public constructor <init>(Lv9/a;)V
    .locals 1

    const-string v0, "adaptIdentifier"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    iput-object p1, p0, Lv9/m;->h:Lv9/a;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lv9/m;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCause()Ljava/lang/Throwable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getMessage()Ljava/lang/String;
.end method

.method public final m()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lgd/q;->h:Lgd/q;

    return-object v0
.end method
