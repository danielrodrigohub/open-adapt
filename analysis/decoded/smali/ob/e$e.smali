.class public final Lob/e$e;
.super Lob/e;
.source "OIDCAuthError.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lob/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "description"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "JwtDecodingFailed"

    invoke-direct {p0, p1, p2}, Lob/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
