.class public final Ly4/b$b;
.super Ln3/i1;
.source "SsManifestParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const-string v0, "Missing required field: "

    .line 1
    invoke-static {v0, p1}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    .line 2
    invoke-direct {p0, p1, v0, v1, v2}, Ln3/i1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    return-void
.end method
