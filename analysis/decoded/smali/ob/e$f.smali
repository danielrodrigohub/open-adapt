.class public final Lob/e$f;
.super Lob/e;
.source "OIDCAuthError.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lob/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "no internet connection: "

    const-string v1, ""

    invoke-static {v0, v1}, Lp4/h;->B(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lob/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
