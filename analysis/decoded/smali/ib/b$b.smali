.class public final Lib/b$b;
.super Ly0/p;
.source "TelemetryDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lib/b;-><init>(Ly0/d0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ly0/p<",
        "Lkb/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ly0/d0;)V
    .locals 0

    invoke-direct {p0, p1}, Ly0/p;-><init>(Ly0/d0;)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `nike_telemetry` WHERE `id` = ?"

    return-object v0
.end method

.method public final e(Ld1/g;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Lkb/a;

    .line 2
    iget-wide v0, p2, Lkb/a;->a:J

    const/4 p2, 0x1

    .line 3
    invoke-interface {p1, p2, v0, v1}, Ld1/e;->K(IJ)V

    return-void
.end method
