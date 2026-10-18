.class public final Leb/c;
.super Leb/g;
.source "TelemetryType.kt"


# direct methods
.method public constructor <init>(Leb/d;)V
    .locals 3

    const-string v0, "telemetryInfo"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Leb/d;->b()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Leb/d;->m()Ljava/util/Map;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 3
    invoke-direct {p0, v1, v0, p1, v2}, Leb/g;-><init>(ILjava/lang/String;Ljava/util/Map;Lrd/h;)V

    return-void
.end method
