.class public final La7/j$a;
.super Lb7/x$a;
.source "KeyData.java"

# interfaces
.implements Lb7/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La7/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb7/x$a<",
        "La7/j;",
        "La7/j$a;",
        ">;",
        "Lb7/r0;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, La7/j;->x()La7/j;

    move-result-object v0

    invoke-direct {p0, v0}, Lb7/x$a;-><init>(Lb7/x;)V

    return-void
.end method
