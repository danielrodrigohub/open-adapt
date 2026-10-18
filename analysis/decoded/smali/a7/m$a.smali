.class public final La7/m$a;
.super Lb7/x$a;
.source "KeyTypeEntry.java"

# interfaces
.implements Lb7/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La7/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb7/x$a<",
        "La7/m;",
        "La7/m$a;",
        ">;",
        "Lb7/r0;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, La7/m;->x()La7/m;

    move-result-object v0

    invoke-direct {p0, v0}, Lb7/x$a;-><init>(Lb7/x;)V

    return-void
.end method
