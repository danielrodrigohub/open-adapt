.class public final Lob/e$g;
.super Lob/e;
.source "OIDCAuthError.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lob/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "Infrastructure stack differs from credential: "

    const-string v2, "Sign in failed due to wrong stack"

    invoke-static {v1, v2}, Lp4/h;->B(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lob/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
