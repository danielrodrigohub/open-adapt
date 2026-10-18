.class public final Li2/n;
.super Ljava/lang/Object;
.source "FontParser.java"


# static fields
.field public static final a:Lj2/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "fFamily"

    const-string v1, "fName"

    const-string v2, "fStyle"

    const-string v3, "ascent"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj2/c$a;->a([Ljava/lang/String;)Lj2/c$a;

    move-result-object v0

    sput-object v0, Li2/n;->a:Lj2/c$a;

    return-void
.end method
