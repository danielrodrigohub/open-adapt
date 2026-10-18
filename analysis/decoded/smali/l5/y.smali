.class public final Ll5/y;
.super Ll5/x;
.source "HttpDataSource.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ll5/m;)V
    .locals 0

    const-string p2, "Invalid content type: "

    .line 1
    invoke-static {p2, p1}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x7d3

    .line 2
    invoke-direct {p0, p1, p2}, Ll5/x;-><init>(Ljava/lang/String;I)V

    return-void
.end method
