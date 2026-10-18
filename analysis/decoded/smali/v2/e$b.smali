.class public final Lv2/e$b;
.super Lv2/e$a;
.source "FileLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lv2/e$a<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lv2/e$b$a;

    invoke-direct {v0}, Lv2/e$b$a;-><init>()V

    invoke-direct {p0, v0}, Lv2/e$a;-><init>(Lv2/e$d;)V

    return-void
.end method
